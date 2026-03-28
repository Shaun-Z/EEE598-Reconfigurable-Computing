#!/usr/bin/env python3
"""Generate all charts for Lab 3 report."""

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
import csv
import os

OUTDIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "figures")
os.makedirs(OUTDIR, exist_ok=True)

# ============================================================
# Part 2 helpers
# ============================================================

def read_csv(path):
    with open(path) as f:
        return list(csv.DictReader(f))

def part2_grouped_bar(data, archs, arch_labels, metric, ylabel, title, filename, is_int=False):
    """Grouped bar chart for Part 2."""
    benchmarks = ["clma", "elliptic", "ex1010", "frisc", "pdc", "s38417", "s38584.1", "spla", "GEOMEAN"]
    bench_labels = [b.replace(".blif","") for b in benchmarks]

    x = np.arange(len(benchmarks))
    width = 0.25
    fig, ax = plt.subplots(figsize=(14, 5))

    for i, (arch, label) in enumerate(zip(archs, arch_labels)):
        vals = []
        for bench in benchmarks:
            row = [r for r in data if r['arch'] == arch and r['benchmark'] == bench]
            if row:
                vals.append(float(row[0][metric]))
            else:
                vals.append(0)
        bars = ax.bar(x + i * width, vals, width, label=label)
        # Add value labels on GEOMEAN bar
        ax.text(x[-1] + i * width, vals[-1], f"{vals[-1]:.1f}" if not is_int else f"{vals[-1]:.0f}",
                ha='center', va='bottom', fontsize=7)

    ax.set_xlabel('Benchmark')
    ax.set_ylabel(ylabel)
    ax.set_title(title)
    ax.set_xticks(x + width)
    ax.set_xticklabels(bench_labels, rotation=45, ha='right', fontsize=8)
    ax.legend()
    ax.grid(axis='y', alpha=0.3)
    # Highlight GEOMEAN
    ax.axvline(x=len(benchmarks) - 1.5, color='gray', linestyle='--', alpha=0.3)
    fig.tight_layout()
    fig.savefig(os.path.join(OUTDIR, filename), dpi=200)
    plt.close(fig)
    print(f"  Saved {filename}")


# ============================================================
# Part 2 Experiment 1: Wire Length
# ============================================================

def plot_part2_exp1():
    print("Part 2 Experiment 1:")
    data = read_csv("part2/results/exp1/exp1_summary.csv")
    archs = ["L1", "L4", "L16"]
    labels = ["L=1", "L=4", "L=16"]

    part2_grouped_bar(data, archs, labels, 'avg_min_w',
                      'Minimum Channel Width', 'Experiment 1: Min Channel Width vs Wire Length',
                      'part2_exp1_min_w.png')
    part2_grouped_bar(data, archs, labels, 'avg_routing_area',
                      'Low-stress Routing Area', 'Experiment 1: Routing Area vs Wire Length',
                      'part2_exp1_area.png', is_int=True)
    part2_grouped_bar(data, archs, labels, 'avg_critical_path_delay_ns',
                      'Critical Path Delay (ns)', 'Experiment 1: Critical Path Delay vs Wire Length',
                      'part2_exp1_delay.png')


# ============================================================
# Part 2 Experiment 2: Fc
# ============================================================

def plot_part2_exp2():
    print("Part 2 Experiment 2:")
    data = read_csv("part2/results/exp2/exp2_summary.csv")
    archs = ["fc0.15", "fc0.5", "fc1.0"]
    labels = ["Fc=0.15", "Fc=0.5", "Fc=1.0"]

    part2_grouped_bar(data, archs, labels, 'avg_min_w',
                      'Minimum Channel Width', 'Experiment 2: Min Channel Width vs Fc',
                      'part2_exp2_min_w.png')
    part2_grouped_bar(data, archs, labels, 'avg_routing_area',
                      'Low-stress Routing Area', 'Experiment 2: Routing Area vs Fc',
                      'part2_exp2_area.png', is_int=True)
    part2_grouped_bar(data, archs, labels, 'avg_critical_path_delay_ns',
                      'Critical Path Delay (ns)', 'Experiment 2: Critical Path Delay vs Fc',
                      'part2_exp2_delay.png')


# ============================================================
# Part 3 Placement Study #1: Cost vs Temperature
# ============================================================

def plot_part3_placement_study1():
    print("Part 3 Placement Study 1:")
    benchmarks = ["alu4", "ex4p", "diffeq1", "sha"]

    fig, axes = plt.subplots(2, 2, figsize=(12, 8))
    axes = axes.flatten()

    for idx, bench in enumerate(benchmarks):
        csv_path = f"part3/results/placement/study1/{bench}_cost_vs_temp.csv"
        if not os.path.exists(csv_path):
            continue
        data = read_csv(csv_path)

        seeds = sorted(set(int(r['seed']) for r in data))
        ax = axes[idx]
        for seed in seeds:
            pts = [(float(r['T']), float(r['cost'])) for r in data if int(r['seed']) == seed]
            pts.sort(key=lambda p: -p[0])  # high T to low T
            ts = [p[0] for p in pts]
            costs = [p[1] for p in pts]
            ax.plot(ts, costs, marker='.', markersize=3, label=f'seed {seed}', alpha=0.8)

        ax.set_xlabel('Temperature (T)')
        ax.set_ylabel('Av BB Cost')
        ax.set_title(f'{bench}')
        ax.set_xscale('symlog', linthresh=1e-6)
        ax.legend(fontsize=7)
        ax.grid(alpha=0.3)
        ax.invert_xaxis()

    fig.suptitle('Placement Study #1: Cost vs Temperature', fontsize=14)
    fig.tight_layout()
    fig.savefig(os.path.join(OUTDIR, 'part3_placement_study1_cost_vs_temp.png'), dpi=200)
    plt.close(fig)
    print("  Saved part3_placement_study1_cost_vs_temp.png")


# ============================================================
# Part 3 Placement Study #2: Init Temperature
# ============================================================

def plot_part3_placement_study2():
    print("Part 3 Placement Study 2:")
    data = read_csv("part3/results/placement/study2/study2_summary.csv")
    benchmarks = ["alu4", "ex4p", "diffeq1", "sha"]

    fig, axes = plt.subplots(2, 2, figsize=(12, 8))
    axes = axes.flatten()

    temp_order = ["t1e-02", "t1e-01", "t1e00", "t1e01", "t1e02"]
    temp_labels = ["0.01", "0.1", "1.0", "10", "100"]

    for idx, bench in enumerate(benchmarks):
        ax = axes[idx]
        means, stds = [], []
        for t in temp_order:
            row = [r for r in data if r['benchmark'] == bench and r['init_t'] == t]
            if row:
                means.append(float(row[0]['mean_cost']))
                stds.append(float(row[0]['std_cost']))
            else:
                means.append(0)
                stds.append(0)

        x = np.arange(len(temp_order))
        bars = ax.bar(x, means, yerr=stds, capsize=5, color='steelblue', alpha=0.8)
        ax.set_xticks(x)
        ax.set_xticklabels(temp_labels)
        ax.set_xlabel('Starting Temperature (init_t)')
        ax.set_ylabel('Final BB Cost (mean ± std)')
        ax.set_title(f'{bench}')
        ax.grid(axis='y', alpha=0.3)
        # Set y-axis to show differences clearly
        if means:
            ymin = min(means) - max(stds) * 3
            ymax = max(means) + max(stds) * 3
            ax.set_ylim(ymin, ymax)

    fig.suptitle('Placement Study #2: Effect of Starting Temperature', fontsize=14)
    fig.tight_layout()
    fig.savefig(os.path.join(OUTDIR, 'part3_placement_study2_init_t.png'), dpi=200)
    plt.close(fig)
    print("  Saved part3_placement_study2_init_t.png")


# ============================================================
# Part 3 Placement Study #3: Normal vs Greedy
# ============================================================

def plot_part3_placement_study3():
    print("Part 3 Placement Study 3:")
    data = read_csv("part3/results/placement/study3/study3_summary.csv")
    benchmarks = ["alu4", "ex4p", "diffeq1", "sha"]

    fig, ax = plt.subplots(figsize=(8, 5))
    x = np.arange(len(benchmarks))
    width = 0.35

    for i, vtype in enumerate(["normal", "greedy"]):
        means, stds = [], []
        for bench in benchmarks:
            row = [r for r in data if r['type'] == vtype and r['benchmark'] == bench]
            if row:
                means.append(float(row[0]['mean_cost']))
                stds.append(float(row[0]['std_cost']))
            else:
                means.append(0)
                stds.append(0)
        bars = ax.bar(x + i * width, means, width, yerr=stds, capsize=5,
                      label=vtype.capitalize(), alpha=0.8)
        for j, (m, s) in enumerate(zip(means, stds)):
            ax.text(x[j] + i * width, m + s + 0.5, f"{m:.1f}", ha='center', va='bottom', fontsize=8)

    ax.set_xticks(x + width / 2)
    ax.set_xticklabels(benchmarks)
    ax.set_xlabel('Benchmark')
    ax.set_ylabel('Final BB Cost (mean ± std)')
    ax.set_title('Placement Study #3: Normal SA vs Greedy Placement')
    ax.legend()
    ax.grid(axis='y', alpha=0.3)
    fig.tight_layout()
    fig.savefig(os.path.join(OUTDIR, 'part3_placement_study3_normal_vs_greedy.png'), dpi=200)
    plt.close(fig)
    print("  Saved part3_placement_study3_normal_vs_greedy.png")


# ============================================================
# Part 3 Routing Study #1 vs #3: A* vs No A*
# ============================================================

def plot_part3_routing_study1_vs_3():
    print("Part 3 Routing Study 1 vs 3:")
    data1 = read_csv("part3/results/routing/study1/study1_summary.csv")
    data3 = read_csv("part3/results/routing/study3/study3_summary.csv")
    benchmarks = ["alu4", "ex4p", "diffeq1", "sha"]

    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

    x = np.arange(len(benchmarks))
    width = 0.35

    # Delay comparison
    delays1 = [float([r for r in data1 if r['benchmark']==b][0]['avg_delay_ns']) for b in benchmarks]
    delays3 = [float([r for r in data3 if r['benchmark']==b][0]['avg_delay_ns']) for b in benchmarks]

    ax1.bar(x, delays1, width, label='A* (Study #1)', alpha=0.8)
    ax1.bar(x + width, delays3, width, label='No A* (Study #3)', alpha=0.8)
    ax1.set_xticks(x + width / 2)
    ax1.set_xticklabels(benchmarks)
    ax1.set_ylabel('Critical Path Delay (ns)')
    ax1.set_title('Delay: A* vs No A*')
    ax1.legend()
    ax1.grid(axis='y', alpha=0.3)

    # Runtime comparison (from log data)
    runtimes1 = [0.14, 0.03, 0.31, 0.21]  # from earlier analysis
    runtimes3 = [0.36, 0.03, 1.13, 2.04]

    ax2.bar(x, runtimes1, width, label='A* (Study #1)', alpha=0.8)
    ax2.bar(x + width, runtimes3, width, label='No A* (Study #3)', alpha=0.8)
    ax2.set_xticks(x + width / 2)
    ax2.set_xticklabels(benchmarks)
    ax2.set_ylabel('Router Run-time (s)')
    ax2.set_title('Runtime: A* vs No A*')
    ax2.legend()
    ax2.grid(axis='y', alpha=0.3)

    fig.suptitle('Routing Study #3: Effect of Disabling A*', fontsize=14)
    fig.tight_layout()
    fig.savefig(os.path.join(OUTDIR, 'part3_routing_study3_astar.png'), dpi=200)
    plt.close(fig)
    print("  Saved part3_routing_study3_astar.png")


# ============================================================
# Part 3 Routing Study #2: Parameter Exploration
# ============================================================

def plot_part3_routing_study2():
    print("Part 3 Routing Study 2:")
    data = read_csv("part3/results/routing/study2/study2_summary.csv")
    benchmarks = ["alu4", "ex4p", "diffeq1", "sha"]

    configs = ["baseline", "init_pres_fac_0.25", "init_pres_fac_1.0",
               "pres_fac_mult_1.1", "pres_fac_mult_2.0",
               "acc_fac_0.5", "acc_fac_2.0",
               "bb_factor_1", "bb_factor_10",
               "astar_fac_1.0", "astar_fac_2.0",
               "max_crit_0.5", "max_crit_1.0",
               "crit_exp_0.5", "crit_exp_2.0",
               "convergence_20", "convergence_100"]

    config_labels = ["baseline", "ipf=0.25", "ipf=1.0",
                     "pfm=1.1", "pfm=2.0",
                     "af=0.5", "af=2.0",
                     "bb=1", "bb=10",
                     "a*=1.0", "a*=2.0",
                     "mc=0.5", "mc=1.0",
                     "ce=0.5", "ce=2.0",
                     "conv=20", "conv=100"]

    fig, axes = plt.subplots(2, 2, figsize=(16, 10))
    axes = axes.flatten()

    for idx, bench in enumerate(benchmarks):
        ax = axes[idx]
        delays = []
        for cfg in configs:
            row = [r for r in data if r['benchmark'] == bench and r['config'] == cfg]
            if row:
                delays.append(float(row[0]['avg_delay_ns']))
            else:
                delays.append(0)

        # Normalize to baseline
        baseline_delay = delays[0] if delays[0] > 0 else 1
        normalized = [d / baseline_delay for d in delays]

        colors = ['green' if n <= 1.0 else 'salmon' for n in normalized]
        colors[0] = 'steelblue'  # baseline

        x = np.arange(len(configs))
        ax.barh(x, normalized, color=colors, alpha=0.8)
        ax.axvline(x=1.0, color='black', linestyle='--', alpha=0.5)
        ax.set_yticks(x)
        ax.set_yticklabels(config_labels, fontsize=7)
        ax.set_xlabel('Delay (normalized to baseline)')
        ax.set_title(f'{bench}')
        ax.invert_yaxis()
        ax.grid(axis='x', alpha=0.3)

    fig.suptitle('Routing Study #2: Parameter Exploration (Delay normalized to baseline)', fontsize=14)
    fig.tight_layout()
    fig.savefig(os.path.join(OUTDIR, 'part3_routing_study2_params.png'), dpi=200)
    plt.close(fig)
    print("  Saved part3_routing_study2_params.png")


# ============================================================
# Main
# ============================================================

if __name__ == "__main__":
    os.chdir(os.path.dirname(os.path.abspath(__file__)))

    plot_part2_exp1()
    plot_part2_exp2()
    plot_part3_placement_study1()
    plot_part3_placement_study2()
    plot_part3_placement_study3()
    plot_part3_routing_study1_vs_3()
    plot_part3_routing_study2()

    print(f"\nAll figures saved to {OUTDIR}/")
