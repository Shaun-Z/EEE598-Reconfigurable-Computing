#!/usr/bin/env python3
"""Generate bar charts for Part 1: CLBs used and Frequency comparison."""

import os
import re
import math
import csv
import matplotlib.pyplot as plt
import numpy as np

# ── Parse data from parse_results.txt and vpr.out files ──────────────────────

BASE_PARSE = os.path.join(os.path.dirname(__file__), "part1_task", "run002")
PARSE_FILE = os.path.join(BASE_PARSE, "parse_results.txt")

ARCHS = [
    "k6_N10_mem32K_40nm.xml",
    "k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml",
    "k6_N5_I20_O5_mem32K_40nm.xml",
]
ARCH_LABELS = ["Arch1\n(k6_N10)", "Arch2\n(k6_frac_N10)", "Arch3\n(k6_N5)"]
ARCH_LABELS_LEGEND = ["Arch1 (k6_N10)", "Arch2 (k6_frac_N10)", "Arch3 (k6_N5)"]

BENCHMARKS = [
    "blob_merge.v",
    "or1200.v",
    "mkDelayWorker32B.v",
    "raygentop.v",
    "mkSMAdapter4B.v",
    "sha.v",
    "spree.v",
    "mkPktMerge.v",
    "boundtop.v",
    "diffeq1.v",
    "diffeq2.v",
    "ch_intrinsics.v",
    "stereovision3.v",
]
BENCH_SHORT = [b.replace(".v", "") for b in BENCHMARKS]


def geometric_mean(values):
    values = [v for v in values if v is not None and v > 0]
    if not values:
        return None
    return math.exp(sum(math.log(v) for v in values) / len(values))


def parse_vpr_out(filepath):
    crit_path_delay_ns = None
    fmax_mhz = None
    with open(filepath, "r") as f:
        for line in f:
            m = re.search(
                r"Final critical path delay \(least slack\):\s+([\d.eE+\-]+)\s+ns", line
            )
            if m:
                crit_path_delay_ns = float(m.group(1))
                m2 = re.search(r"Fmax:\s+([\d.eE+\-]+)\s+MHz", line)
                if m2:
                    fmax_mhz = float(m2.group(1))
                elif crit_path_delay_ns > 0:
                    fmax_mhz = 1000.0 / crit_path_delay_ns
    return crit_path_delay_ns, fmax_mhz


# Parse num_clb from parse_results.txt
clb_data = {a: {} for a in ARCHS}
with open(PARSE_FILE, "r") as f:
    reader = csv.DictReader(f, delimiter="\t")
    for row in reader:
        sp = row.get("script_params", "").strip()
        if "reorder" in sp:
            continue
        arch = row["arch"]
        circ = row["circuit"]
        if arch in ARCHS and circ in BENCHMARKS:
            clb_data[arch][circ] = int(row["num_clb"])

# Parse Fmax from vpr.out files
fmax_data = {a: {} for a in ARCHS}
for arch in ARCHS:
    for bench in BENCHMARKS:
        vpr_path = os.path.join(BASE_PARSE, arch, bench, "common", "vpr.out")
        if os.path.exists(vpr_path):
            _, fmax = parse_vpr_out(vpr_path)
            fmax_data[arch][bench] = fmax

# ── Chart 1: CLBs Used ──────────────────────────────────────────────────────

labels = BENCH_SHORT + ["Geomean"]
n = len(labels)
x = np.arange(n)
width = 0.25
colors = ["#4472C4", "#ED7D31", "#70AD47"]

fig1, ax1 = plt.subplots(figsize=(18, 9))

for i, (arch, color, label) in enumerate(zip(ARCHS, colors, ARCH_LABELS_LEGEND)):
    vals = [clb_data[arch].get(b, 0) for b in BENCHMARKS]
    gm = geometric_mean(vals)
    vals.append(gm)
    bars = ax1.bar(x + i * width, vals, width, label=label, color=color, edgecolor="white")
    for bar, v in zip(bars, vals):
        if v and v > 0:
            ax1.text(
                bar.get_x() + bar.get_width() / 2,
                bar.get_height(),
                f"{v:.0f}",
                ha="center",
                va="bottom",
                fontsize=9,
                rotation=90,
            )

ax1.set_xlabel("Benchmark", fontsize=16)
ax1.set_ylabel("Number of CLBs Used", fontsize=16)
ax1.set_title("CLBs Used per Benchmark for 3 Architectures", fontsize=18, fontweight="bold")
ax1.set_xticks(x + width)
ax1.set_xticklabels(labels, rotation=45, ha="right", fontsize=13)
ax1.tick_params(axis="y", labelsize=13)
ax1.legend(fontsize=14)
ax1.grid(axis="y", alpha=0.3)

# Bold red for the Geomean tick label
for tick_label in ax1.get_xticklabels():
    if tick_label.get_text() == "Geomean":
        tick_label.set_color("red")
        tick_label.set_fontweight("bold")

plt.tight_layout()
fig1.savefig(os.path.join(os.path.dirname(__file__), "part1_clbs_comparison.png"), dpi=200)
print("Saved: part1_clbs_comparison.png")

# ── Chart 2: Frequency (Fmax) ───────────────────────────────────────────────

fig2, ax2 = plt.subplots(figsize=(18, 9))

for i, (arch, color, label) in enumerate(zip(ARCHS, colors, ARCH_LABELS_LEGEND)):
    vals = [fmax_data[arch].get(b, 0) for b in BENCHMARKS]
    gm = geometric_mean(vals)
    vals.append(gm)
    bars = ax2.bar(x + i * width, vals, width, label=label, color=color, edgecolor="white")
    for bar, v in zip(bars, vals):
        if v and v > 0:
            ax2.text(
                bar.get_x() + bar.get_width() / 2,
                bar.get_height(),
                f"{v:.1f}",
                ha="center",
                va="bottom",
                fontsize=9,
                rotation=90,
            )

ax2.set_xlabel("Benchmark", fontsize=16)
ax2.set_ylabel("Fmax (MHz)", fontsize=16)
ax2.set_title("Frequency (Fmax) per Benchmark for 3 Architectures", fontsize=18, fontweight="bold")
ax2.set_xticks(x + width)
ax2.set_xticklabels(labels, rotation=45, ha="right", fontsize=13)
ax2.tick_params(axis="y", labelsize=13)
ax2.legend(fontsize=14)
ax2.grid(axis="y", alpha=0.3)

for tick_label in ax2.get_xticklabels():
    if tick_label.get_text() == "Geomean":
        tick_label.set_color("red")
        tick_label.set_fontweight("bold")

plt.tight_layout()
fig2.savefig(os.path.join(os.path.dirname(__file__), "part1_fmax_comparison.png"), dpi=200)
print("Saved: part1_fmax_comparison.png")

plt.show()
