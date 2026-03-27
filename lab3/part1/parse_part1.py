#!/usr/bin/env python3
"""Parse Part 1 VTR results: extract area and critical path delay from vpr.out files."""

import os
import re
import math
import csv

BASE = os.path.join(os.path.dirname(__file__), "part1_task", "run002")

ARCHS = [
    "k6_N10_mem32K_40nm.xml",
    "k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml",
    "k6_N5_I20_O5_mem32K_40nm.xml",
]
ARCH_LABELS = ["Arch1 (k6_N10)", "Arch2 (k6_frac_N10)", "Arch3 (k6_N5)"]

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

SCRIPT_PARAMS_DIR = "common"


def parse_vpr_out(filepath):
    """Parse a vpr.out file for used logic area, total routing area, and critical path delay."""
    used_logic_area = None
    total_routing_area = None
    crit_path_delay_ns = None
    fmax_mhz = None

    with open(filepath, "r") as f:
        for line in f:
            m = re.search(r"Total used logic block area:\s+([\d.eE+\-]+)", line)
            if m:
                used_logic_area = float(m.group(1))

            m = re.search(r"Total routing area:\s+([\d.eE+\-]+)", line)
            if m:
                total_routing_area = float(m.group(1))

            m = re.search(
                r"Final critical path delay \(least slack\):\s+([\d.eE+\-]+)\s+ns",
                line,
            )
            if m:
                crit_path_delay_ns = float(m.group(1))
                # Try to extract Fmax if present, otherwise compute from delay
                m2 = re.search(r"Fmax:\s+([\d.eE+\-]+)\s+MHz", line)
                if m2:
                    fmax_mhz = float(m2.group(1))
                elif crit_path_delay_ns > 0:
                    fmax_mhz = 1000.0 / crit_path_delay_ns  # convert ns to MHz

    return used_logic_area, total_routing_area, crit_path_delay_ns, fmax_mhz


def geometric_mean(values):
    """Compute geometric mean of a list of positive values."""
    values = [v for v in values if v is not None and v > 0]
    if not values:
        return None
    log_sum = sum(math.log(v) for v in values)
    return math.exp(log_sum / len(values))


# Collect data: {arch: {benchmark: (used_logic, routing, total_area, delay_ns, fmax)}}
data = {}
for arch in ARCHS:
    data[arch] = {}
    for bench in BENCHMARKS:
        vpr_path = os.path.join(BASE, arch, bench, SCRIPT_PARAMS_DIR, "vpr.out")
        if os.path.exists(vpr_path):
            ul, ra, cpd, fmax = parse_vpr_out(vpr_path)
            total_area = None
            if ul is not None and ra is not None:
                total_area = ul + ra
            data[arch][bench] = {
                "used_logic_area": ul,
                "routing_area": ra,
                "total_area": total_area,
                "crit_path_delay_ns": cpd,
                "fmax_mhz": fmax,
            }
        else:
            print(f"WARNING: {vpr_path} not found")
            data[arch][bench] = {
                "used_logic_area": None,
                "routing_area": None,
                "total_area": None,
                "crit_path_delay_ns": None,
                "fmax_mhz": None,
            }

# Print Area Table
print("=" * 120)
print("AREA COMPARISON (Used Logic Area + Total Routing Area) [in min-width transistor areas]")
print("=" * 120)
header = f"{'Benchmark':<25}"
for label in ARCH_LABELS:
    header += f"{label:>25}"
print(header)
print("-" * 120)

for bench in BENCHMARKS:
    row = f"{bench:<25}"
    for arch in ARCHS:
        val = data[arch][bench]["total_area"]
        if val is not None:
            row += f"{val:>25.2f}"
        else:
            row += f"{'N/A':>25}"
    print(row)

# Geometric mean
row = f"{'Geometric Mean':<25}"
for arch in ARCHS:
    areas = [data[arch][b]["total_area"] for b in BENCHMARKS]
    gm = geometric_mean(areas)
    if gm is not None:
        row += f"{gm:>25.2f}"
    else:
        row += f"{'N/A':>25}"
print("-" * 120)
print(row)

# Print Frequency Table
print()
print("=" * 120)
print("FREQUENCY COMPARISON (Fmax in MHz)")
print("=" * 120)
header = f"{'Benchmark':<25}"
for label in ARCH_LABELS:
    header += f"{label:>25}"
print(header)
print("-" * 120)

for bench in BENCHMARKS:
    row = f"{bench:<25}"
    for arch in ARCHS:
        val = data[arch][bench]["fmax_mhz"]
        if val is not None:
            row += f"{val:>25.2f}"
        else:
            row += f"{'N/A':>25}"
    print(row)

# Geometric mean
row = f"{'Geometric Mean':<25}"
for arch in ARCHS:
    freqs = [data[arch][b]["fmax_mhz"] for b in BENCHMARKS]
    gm = geometric_mean(freqs)
    if gm is not None:
        row += f"{gm:>25.2f}"
    else:
        row += f"{'N/A':>25}"
print("-" * 120)
print(row)

# Print Critical Path Delay Table
print()
print("=" * 120)
print("CRITICAL PATH DELAY (ns)")
print("=" * 120)
header = f"{'Benchmark':<25}"
for label in ARCH_LABELS:
    header += f"{label:>25}"
print(header)
print("-" * 120)

for bench in BENCHMARKS:
    row = f"{bench:<25}"
    for arch in ARCHS:
        val = data[arch][bench]["crit_path_delay_ns"]
        if val is not None:
            row += f"{val:>25.4f}"
        else:
            row += f"{'N/A':>25}"
    print(row)

# Geometric mean
row = f"{'Geometric Mean':<25}"
for arch in ARCHS:
    delays = [data[arch][b]["crit_path_delay_ns"] for b in BENCHMARKS]
    gm = geometric_mean(delays)
    if gm is not None:
        row += f"{gm:>25.4f}"
    else:
        row += f"{'N/A':>25}"
print("-" * 120)
print(row)

# Also print sub-component area tables
print()
print("=" * 120)
print("USED LOGIC BLOCK AREA [in min-width transistor areas]")
print("=" * 120)
header = f"{'Benchmark':<25}"
for label in ARCH_LABELS:
    header += f"{label:>25}"
print(header)
print("-" * 120)

for bench in BENCHMARKS:
    row = f"{bench:<25}"
    for arch in ARCHS:
        val = data[arch][bench]["used_logic_area"]
        if val is not None:
            row += f"{val:>25.2f}"
        else:
            row += f"{'N/A':>25}"
    print(row)

row = f"{'Geometric Mean':<25}"
for arch in ARCHS:
    vals = [data[arch][b]["used_logic_area"] for b in BENCHMARKS]
    gm = geometric_mean(vals)
    if gm is not None:
        row += f"{gm:>25.2f}"
    else:
        row += f"{'N/A':>25}"
print("-" * 120)
print(row)

print()
print("=" * 120)
print("TOTAL ROUTING AREA [in min-width transistor areas]")
print("=" * 120)
header = f"{'Benchmark':<25}"
for label in ARCH_LABELS:
    header += f"{label:>25}"
print(header)
print("-" * 120)

for bench in BENCHMARKS:
    row = f"{bench:<25}"
    for arch in ARCHS:
        val = data[arch][bench]["routing_area"]
        if val is not None:
            row += f"{val:>25.2f}"
        else:
            row += f"{'N/A':>25}"
    print(row)

row = f"{'Geometric Mean':<25}"
for arch in ARCHS:
    vals = [data[arch][b]["routing_area"] for b in BENCHMARKS]
    gm = geometric_mean(vals)
    if gm is not None:
        row += f"{gm:>25.2f}"
    else:
        row += f"{'N/A':>25}"
print("-" * 120)
print(row)

# Export to CSV for easy spreadsheet import
csv_path = os.path.join(os.path.dirname(__file__), "part1_results.csv")
with open(csv_path, "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(
        ["Benchmark"]
        + [f"{l} - Area" for l in ARCH_LABELS]
        + [f"{l} - Fmax (MHz)" for l in ARCH_LABELS]
        + [f"{l} - CPD (ns)" for l in ARCH_LABELS]
    )
    for bench in BENCHMARKS:
        row = [bench]
        for arch in ARCHS:
            row.append(data[arch][bench]["total_area"])
        for arch in ARCHS:
            row.append(data[arch][bench]["fmax_mhz"])
        for arch in ARCHS:
            row.append(data[arch][bench]["crit_path_delay_ns"])
        writer.writerow(row)

    # Geometric means
    gm_row = ["Geometric Mean"]
    for arch in ARCHS:
        gm_row.append(geometric_mean([data[arch][b]["total_area"] for b in BENCHMARKS]))
    for arch in ARCHS:
        gm_row.append(geometric_mean([data[arch][b]["fmax_mhz"] for b in BENCHMARKS]))
    for arch in ARCHS:
        gm_row.append(
            geometric_mean([data[arch][b]["crit_path_delay_ns"] for b in BENCHMARKS])
        )
    writer.writerow(gm_row)

print(f"\nCSV exported to: {csv_path}")
