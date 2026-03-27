#!/usr/bin/env python3
"""
Parse VPR output logs for Part 2 and generate CSV summaries.

Extracts:
  - Minimum channel width (from min_w run)
  - Total routing area (from low_stress run)
  - Critical path delay (from low_stress run)

Computes:
  - Arithmetic mean across seeds
  - Geometric mean across benchmarks
"""

import os
import re
import json
import csv
import math
from pathlib import Path
from collections import defaultdict

RESULTS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results")

BENCHMARKS = [
    "clma", "elliptic", "ex1010", "frisc",
    "pdc", "s38417", "s38584.1", "spla"
]


def parse_vpr_log(log_path):
    """Parse a VPR stdout log file and extract key metrics."""
    metrics = {}
    if not os.path.exists(log_path):
        return metrics

    with open(log_path) as f:
        content = f.read()

    # Min channel width
    m = re.search(r'Best routing used a channel width factor of (\d+)', content)
    if m:
        metrics['min_chan_width'] = int(m.group(1))

    # Critical path delay
    m = re.search(r'Final critical path delay \(least slack\): ([\d.e+-]+) ns', content)
    if m:
        metrics['critical_path_delay_ns'] = float(m.group(1))

    # Total routing area
    m = re.search(r'Total routing area: ([\d.e+-]+)', content)
    if m:
        metrics['total_routing_area'] = float(m.group(1))

    # Total used logic block area
    m = re.search(r'Total used logic block area: ([\d.e+-]+)', content)
    if m:
        metrics['total_logic_area'] = float(m.group(1))

    # Total wire length
    m = re.search(r'Total wirelength: (\d+)', content)
    if m:
        metrics['total_wirelength'] = int(m.group(1))

    return metrics


def geometric_mean(values):
    """Compute geometric mean of a list of positive values."""
    if not values or any(v <= 0 for v in values):
        return None
    log_sum = sum(math.log(v) for v in values)
    return math.exp(log_sum / len(values))


def collect_results(experiment):
    """Collect all results for an experiment."""
    exp_dir = os.path.join(RESULTS_DIR, f"exp{experiment}")
    if not os.path.exists(exp_dir):
        print(f"No results directory found: {exp_dir}")
        return {}

    # Structure: results[arch][bench][seed] = {metrics}
    results = defaultdict(lambda: defaultdict(dict))

    for arch_name in os.listdir(exp_dir):
        arch_dir = os.path.join(exp_dir, arch_name)
        if not os.path.isdir(arch_dir) or arch_name == "slurm_jobs":
            continue

        for bench in BENCHMARKS:
            bench_dir = os.path.join(arch_dir, bench)
            if not os.path.isdir(bench_dir):
                continue

            for seed_dir_name in os.listdir(bench_dir):
                if not seed_dir_name.startswith("seed"):
                    continue
                seed = int(seed_dir_name.replace("seed", ""))
                base_dir = os.path.join(bench_dir, seed_dir_name)

                entry = {}

                # Parse meta.json for min_w and low_stress_w
                meta_path = os.path.join(base_dir, "meta.json")
                if os.path.exists(meta_path):
                    with open(meta_path) as f:
                        meta = json.load(f)
                    entry['min_w'] = meta.get('min_w')
                    entry['low_stress_w'] = meta.get('low_stress_w')

                # Parse min_w VPR log
                minw_log = os.path.join(base_dir, "min_w", "vpr_stdout.log")
                minw_metrics = parse_vpr_log(minw_log)
                entry.update({f"minw_{k}": v for k, v in minw_metrics.items()})

                # Parse low_stress VPR log
                ls_log = os.path.join(base_dir, "low_stress", "vpr_stdout.log")
                ls_metrics = parse_vpr_log(ls_log)
                entry.update({f"ls_{k}": v for k, v in ls_metrics.items()})

                results[arch_name][bench][seed] = entry

    return results


def summarize_and_write_csv(results, experiment):
    """Compute averages and write CSV files."""
    exp_dir = os.path.join(RESULTS_DIR, f"exp{experiment}")
    os.makedirs(exp_dir, exist_ok=True)

    # --- Detailed CSV (per seed) ---
    detail_path = os.path.join(exp_dir, f"exp{experiment}_detailed.csv")
    fields = ["arch", "benchmark", "seed", "min_w", "low_stress_w",
              "ls_total_routing_area", "ls_critical_path_delay_ns", "ls_total_wirelength"]

    with open(detail_path, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for arch in sorted(results):
            for bench in BENCHMARKS:
                if bench not in results[arch]:
                    continue
                for seed in sorted(results[arch][bench]):
                    entry = results[arch][bench][seed]
                    writer.writerow({
                        "arch": arch,
                        "benchmark": bench,
                        "seed": seed,
                        "min_w": entry.get("min_w", ""),
                        "low_stress_w": entry.get("low_stress_w", ""),
                        "ls_total_routing_area": entry.get("ls_total_routing_area", ""),
                        "ls_critical_path_delay_ns": entry.get("ls_critical_path_delay_ns", ""),
                        "ls_total_wirelength": entry.get("ls_total_wirelength", ""),
                    })
    print(f"Detailed CSV: {detail_path}")

    # --- Summary CSV (arithmetic mean across seeds, geometric mean across benchmarks) ---
    summary_path = os.path.join(exp_dir, f"exp{experiment}_summary.csv")
    summary_fields = ["arch", "benchmark", "avg_min_w", "avg_routing_area",
                      "avg_critical_path_delay_ns", "avg_wirelength"]

    rows = []
    # Per-arch geo-mean collectors
    geo_collectors = defaultdict(lambda: defaultdict(list))

    for arch in sorted(results):
        for bench in BENCHMARKS:
            if bench not in results[arch]:
                continue
            seeds_data = results[arch][bench]
            if not seeds_data:
                continue

            # Arithmetic mean across seeds
            avg = {}
            for metric in ["min_w", "ls_total_routing_area", "ls_critical_path_delay_ns", "ls_total_wirelength"]:
                vals = [s.get(metric) for s in seeds_data.values() if s.get(metric) is not None]
                avg[metric] = sum(vals) / len(vals) if vals else None

            row = {
                "arch": arch,
                "benchmark": bench,
                "avg_min_w": f"{avg['min_w']:.1f}" if avg['min_w'] else "",
                "avg_routing_area": f"{avg['ls_total_routing_area']:.0f}" if avg['ls_total_routing_area'] else "",
                "avg_critical_path_delay_ns": f"{avg['ls_critical_path_delay_ns']:.4f}" if avg['ls_critical_path_delay_ns'] else "",
                "avg_wirelength": f"{avg['ls_total_wirelength']:.0f}" if avg['ls_total_wirelength'] else "",
            }
            rows.append(row)

            # Collect for geometric mean
            for metric_key, avg_key in [
                ("min_w", "avg_min_w"),
                ("ls_total_routing_area", "avg_routing_area"),
                ("ls_critical_path_delay_ns", "avg_critical_path_delay_ns"),
                ("ls_total_wirelength", "avg_wirelength"),
            ]:
                if avg[metric_key] is not None and avg[metric_key] > 0:
                    geo_collectors[arch][avg_key].append(avg[metric_key])

        # Add geometric mean row
        geo_row = {"arch": arch, "benchmark": "GEOMEAN"}
        for col in ["avg_min_w", "avg_routing_area", "avg_critical_path_delay_ns", "avg_wirelength"]:
            gm = geometric_mean(geo_collectors[arch].get(col, []))
            if gm is not None:
                if col == "avg_critical_path_delay_ns":
                    geo_row[col] = f"{gm:.4f}"
                elif col == "avg_min_w":
                    geo_row[col] = f"{gm:.1f}"
                else:
                    geo_row[col] = f"{gm:.0f}"
            else:
                geo_row[col] = ""
        rows.append(geo_row)

    with open(summary_path, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=summary_fields)
        writer.writeheader()
        writer.writerows(rows)
    print(f"Summary CSV: {summary_path}")


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Parse Part 2 VPR results")
    parser.add_argument("--experiment", choices=["1", "2", "both"], default="both")
    args = parser.parse_args()

    experiments = []
    if args.experiment in ("1", "both"):
        experiments.append("1")
    if args.experiment in ("2", "both"):
        experiments.append("2")

    for exp in experiments:
        print(f"\n{'='*50}")
        print(f"Experiment {exp}")
        print(f"{'='*50}")
        results = collect_results(exp)
        if results:
            summarize_and_write_csv(results, exp)
        else:
            print("No results found yet.")


if __name__ == "__main__":
    main()
