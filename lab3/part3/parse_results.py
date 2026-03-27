#!/usr/bin/env python3
"""
Parse Part 3 VPR logs for placement and routing studies.

Placement:
  - Extract cost ("Av BB Cost") vs temperature ("T") curves
  - Extract final placement scores
  - Compare normal vs greedy placement

Routing:
  - Extract critical path delay, total wirelength, routing area
  - Compare across parameter configurations
"""

import os
import re
import csv
import math
import json
from collections import defaultdict
from pathlib import Path

RESULTS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results")
BENCHMARKS = ["alu4", "ex4p", "diffeq1", "sha"]


def parse_placement_log(log_path):
    """Parse VPR placement log: extract T vs cost curve and final score."""
    if not os.path.exists(log_path):
        return None

    with open(log_path) as f:
        content = f.read()

    # Extract T and "Av BB Cost" from the placement annealing table
    # Table format: Tnum Time T AvCost AvBBCost AvTDCost CPD sTNS sWNS AcRate StdDev Rlim CritExp TotMoves Alpha
    # Example:    1    0.0 3.7e-04   0.948      58.50 nan   nan   nan   nan   0.271  0.0208   13.0     0.00       325  0.200
    curve = []
    for m in re.finditer(
        r'^\s*\d+\s+[\d.]+\s+([\d.eE+-]+)\s+([\d.eE+-]+)\s+([\d.eE+-]+)',
        content, re.MULTILINE
    ):
        t = float(m.group(1))
        cost = float(m.group(3))  # Av BB Cost is the 3rd numeric after Tnum/Time
        curve.append({"T": t, "cost": cost})

    # Final BB cost from "Placement cost: ..., bb_cost: ..."
    final_cost = None
    m = re.search(r'Placement cost:.*bb_cost:\s*([\d.]+)', content)
    if m:
        final_cost = float(m.group(1))
    # Alternative: last cost in the curve
    if final_cost is None and curve:
        final_cost = curve[-1]["cost"]

    return {"curve": curve, "final_cost": final_cost}


def parse_routing_log(log_path):
    """Parse VPR routing log for key metrics."""
    if not os.path.exists(log_path):
        return None

    with open(log_path) as f:
        content = f.read()

    metrics = {}

    m = re.search(r'Final critical path delay \(least slack\): ([\d.eE+-]+) ns', content)
    if m:
        metrics['critical_path_delay_ns'] = float(m.group(1))

    m = re.search(r'Total routing area: ([\d.eE+-]+)', content)
    if m:
        metrics['total_routing_area'] = float(m.group(1))

    m = re.search(r'Total wirelength: (\d+)', content)
    if m:
        metrics['total_wirelength'] = int(m.group(1))

    # Routing iterations
    m = re.search(r'Successfully routed after (\d+) routing iterations', content)
    if m:
        metrics['routing_iterations'] = int(m.group(1))

    return metrics


def geometric_mean(values):
    if not values or any(v <= 0 for v in values):
        return None
    return math.exp(sum(math.log(v) for v in values) / len(values))


# ---- Placement Study #1: Cost vs Temperature curves ----

def parse_placement_study1():
    """Parse study 1 and write cost-vs-temp CSV per benchmark."""
    study_dir = os.path.join(RESULTS_DIR, "placement", "study1")
    if not os.path.exists(study_dir):
        print("Placement study 1: no results found")
        return

    for bench in BENCHMARKS:
        all_curves = []
        for seed_dir in sorted(Path(study_dir, bench).glob("seed*")):
            seed = int(seed_dir.name.replace("seed", ""))
            log = seed_dir / "vpr_stdout.log"
            result = parse_placement_log(str(log))
            if result and result["curve"]:
                for pt in result["curve"]:
                    all_curves.append({"seed": seed, "T": pt["T"], "cost": pt["cost"]})

        if all_curves:
            csv_path = os.path.join(study_dir, f"{bench}_cost_vs_temp.csv")
            with open(csv_path, "w", newline="") as f:
                writer = csv.DictWriter(f, fieldnames=["seed", "T", "cost"])
                writer.writeheader()
                writer.writerows(all_curves)
            print(f"  Placement #1: {csv_path}")


# ---- Placement Study #2: Init temperature sweep ----

def parse_placement_study2():
    """Parse study 2 and compute mean/std of final score per init_t."""
    study_dir = os.path.join(RESULTS_DIR, "placement", "study2")
    if not os.path.exists(study_dir):
        print("Placement study 2: no results found")
        return

    rows = []
    for bench in BENCHMARKS:
        bench_dir = os.path.join(study_dir, bench)
        if not os.path.exists(bench_dir):
            continue
        for t_dir in sorted(Path(bench_dir).iterdir()):
            if not t_dir.is_dir() or t_dir.name == "slurm_jobs":
                continue
            costs = []
            for seed_dir in sorted(t_dir.glob("seed*")):
                log = seed_dir / "vpr_stdout.log"
                result = parse_placement_log(str(log))
                if result and result["final_cost"] is not None:
                    costs.append(result["final_cost"])
            if costs:
                mean = sum(costs) / len(costs)
                std = (sum((c - mean) ** 2 for c in costs) / len(costs)) ** 0.5
                rows.append({
                    "benchmark": bench,
                    "init_t": t_dir.name,
                    "n_seeds": len(costs),
                    "mean_cost": f"{mean:.2f}",
                    "std_cost": f"{std:.2f}",
                })

    if rows:
        csv_path = os.path.join(study_dir, "study2_summary.csv")
        with open(csv_path, "w", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=["benchmark", "init_t", "n_seeds", "mean_cost", "std_cost"])
            writer.writeheader()
            writer.writerows(rows)
        print(f"  Placement #2: {csv_path}")


# ---- Placement Study #3: Normal vs Greedy ----

def parse_placement_study3():
    """Parse study 3 and compare normal vs greedy."""
    study_dir = os.path.join(RESULTS_DIR, "placement", "study3")
    if not os.path.exists(study_dir):
        print("Placement study 3: no results found")
        return

    rows = []
    for vpr_type in ["normal", "greedy"]:
        type_dir = os.path.join(study_dir, vpr_type)
        if not os.path.exists(type_dir):
            continue
        for bench in BENCHMARKS:
            costs = []
            curves_data = []
            for seed_dir in sorted(Path(type_dir, bench).glob("seed*")):
                log = seed_dir / "vpr_stdout.log"
                result = parse_placement_log(str(log))
                if result:
                    if result["final_cost"] is not None:
                        costs.append(result["final_cost"])
                    if result["curve"]:
                        seed = int(seed_dir.name.replace("seed", ""))
                        for pt in result["curve"]:
                            curves_data.append({"type": vpr_type, "seed": seed, "T": pt["T"], "cost": pt["cost"]})

            if costs:
                mean = sum(costs) / len(costs)
                std = (sum((c - mean) ** 2 for c in costs) / len(costs)) ** 0.5
                rows.append({
                    "type": vpr_type, "benchmark": bench,
                    "n_seeds": len(costs),
                    "mean_cost": f"{mean:.2f}", "std_cost": f"{std:.2f}",
                })

            # Write per-benchmark curve CSV for plotting
            if curves_data:
                csv_path = os.path.join(study_dir, f"{bench}_{vpr_type}_curves.csv")
                with open(csv_path, "w", newline="") as f:
                    writer = csv.DictWriter(f, fieldnames=["type", "seed", "T", "cost"])
                    writer.writeheader()
                    writer.writerows(curves_data)

    if rows:
        csv_path = os.path.join(study_dir, "study3_summary.csv")
        with open(csv_path, "w", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=["type", "benchmark", "n_seeds", "mean_cost", "std_cost"])
            writer.writeheader()
            writer.writerows(rows)
        print(f"  Placement #3: {csv_path}")


# ---- Routing Study #1 & #3 ----

def parse_routing_study(study_num):
    """Parse routing study 1 or 3."""
    study_dir = os.path.join(RESULTS_DIR, "routing", f"study{study_num}")
    if not os.path.exists(study_dir):
        print(f"Routing study {study_num}: no results found")
        return

    rows = []
    for bench in BENCHMARKS:
        bench_dir = os.path.join(study_dir, bench)
        if not os.path.exists(bench_dir):
            continue
        delays, wirelens, areas, iters = [], [], [], []
        for seed_dir in sorted(Path(bench_dir).glob("seed*")):
            log = seed_dir / "vpr_stdout.log"
            m = parse_routing_log(str(log))
            if m:
                if 'critical_path_delay_ns' in m:
                    delays.append(m['critical_path_delay_ns'])
                if 'total_wirelength' in m:
                    wirelens.append(m['total_wirelength'])
                if 'total_routing_area' in m:
                    areas.append(m['total_routing_area'])
                if 'routing_iterations' in m:
                    iters.append(m['routing_iterations'])

        if delays:
            rows.append({
                "benchmark": bench,
                "n_seeds": len(delays),
                "avg_delay_ns": f"{sum(delays)/len(delays):.4f}",
                "avg_wirelength": f"{sum(wirelens)/len(wirelens):.0f}" if wirelens else "",
                "avg_routing_area": f"{sum(areas)/len(areas):.0f}" if areas else "",
                "avg_iterations": f"{sum(iters)/len(iters):.1f}" if iters else "",
            })

    if rows:
        csv_path = os.path.join(study_dir, f"study{study_num}_summary.csv")
        with open(csv_path, "w", newline="") as f:
            fields = ["benchmark", "n_seeds", "avg_delay_ns", "avg_wirelength", "avg_routing_area", "avg_iterations"]
            writer = csv.DictWriter(f, fieldnames=fields)
            writer.writeheader()
            writer.writerows(rows)
        print(f"  Routing #{study_num}: {csv_path}")


# ---- Routing Study #2: Parameter exploration ----

def parse_routing_study2():
    """Parse routing study 2 parameter exploration."""
    study_dir = os.path.join(RESULTS_DIR, "routing", "study2")
    if not os.path.exists(study_dir):
        print("Routing study 2: no results found")
        return

    rows = []
    for bench in BENCHMARKS:
        bench_dir = os.path.join(study_dir, bench)
        if not os.path.exists(bench_dir):
            continue
        for config_dir in sorted(Path(bench_dir).iterdir()):
            if not config_dir.is_dir() or config_dir.name == "slurm_jobs":
                continue
            delays, wirelens, iters = [], [], []
            for seed_dir in sorted(config_dir.glob("seed*")):
                log = seed_dir / "vpr_stdout.log"
                m = parse_routing_log(str(log))
                if m:
                    if 'critical_path_delay_ns' in m:
                        delays.append(m['critical_path_delay_ns'])
                    if 'total_wirelength' in m:
                        wirelens.append(m['total_wirelength'])
                    if 'routing_iterations' in m:
                        iters.append(m['routing_iterations'])

            if delays:
                rows.append({
                    "benchmark": bench,
                    "config": config_dir.name,
                    "n_seeds": len(delays),
                    "avg_delay_ns": f"{sum(delays)/len(delays):.4f}",
                    "avg_wirelength": f"{sum(wirelens)/len(wirelens):.0f}" if wirelens else "",
                    "avg_iterations": f"{sum(iters)/len(iters):.1f}" if iters else "",
                })

    if rows:
        csv_path = os.path.join(study_dir, "study2_summary.csv")
        with open(csv_path, "w", newline="") as f:
            fields = ["benchmark", "config", "n_seeds", "avg_delay_ns", "avg_wirelength", "avg_iterations"]
            writer = csv.DictWriter(f, fieldnames=fields)
            writer.writeheader()
            writer.writerows(rows)
        print(f"  Routing #2: {csv_path}")


def main():
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--section", choices=["placement", "routing", "all"], default="all")
    args = parser.parse_args()

    if args.section in ("placement", "all"):
        print("\n=== Placement Results ===")
        parse_placement_study1()
        parse_placement_study2()
        parse_placement_study3()

    if args.section in ("routing", "all"):
        print("\n=== Routing Results ===")
        parse_routing_study(1)
        parse_routing_study2()
        parse_routing_study(3)


if __name__ == "__main__":
    main()
