#!/usr/bin/env python3
"""
Part 3 — Routing Study

#1: Run with --max_criticality 0.5, fixed W per benchmark, 3+ seeds
#2: Explore routing parameters
#3: Disable A* routing (--astar_fac 0), repeat #1

Usage:
  python run_routing.py [--study {1,2,3,all}] [--bench BENCH] [--seed SEED] [--dry-run] [--slurm]
"""

import argparse
import subprocess
import os
import json

VPR = "/packages/apps/vtr/8.0.0-git/vpr/vpr"
ARCH = "/packages/apps/vtr/8.0.0-git/vtr_flow/arch/timing/k6_frac_N10_mem32K_40nm.xml"
PART3_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(PART3_DIR, "results", "routing")

BENCHMARKS = ["alu4", "ex4p", "diffeq1", "sha"]

# Fixed channel widths per benchmark (from lab spec)
FIXED_W = {
    "alu4": 40,
    "diffeq1": 60,
    "ex4p": 50,
    "sha": 60,
}

SEEDS = [1, 2, 3]

# Study #2: Parameter exploration configurations
# Each config is a dict of VPR routing args to explore
PARAM_CONFIGS = {
    "baseline": {},
    "init_pres_fac_0.25": {"--initial_pres_fac": "0.25"},
    "init_pres_fac_1.0": {"--initial_pres_fac": "1.0"},
    "pres_fac_mult_1.1": {"--pres_fac_mult": "1.1"},
    "pres_fac_mult_2.0": {"--pres_fac_mult": "2.0"},
    "acc_fac_0.5": {"--acc_fac": "0.5"},
    "acc_fac_2.0": {"--acc_fac": "2.0"},
    "bb_factor_1": {"--bb_factor": "1"},
    "bb_factor_10": {"--bb_factor": "10"},
    "astar_fac_1.0": {"--astar_fac": "1.0"},
    "astar_fac_2.0": {"--astar_fac": "2.0"},
    "max_crit_0.5": {"--max_criticality": "0.5"},
    "max_crit_1.0": {"--max_criticality": "1.0"},
    "crit_exp_0.5": {"--criticality_exp": "0.5"},
    "crit_exp_2.0": {"--criticality_exp": "2.0"},
    "convergence_20": {"--router_max_convergence_count": "20"},
    "convergence_100": {"--router_max_convergence_count": "100"},
}


def run_vpr_routing(blif, outdir, chan_width, extra_args=None, dry_run=False):
    """Run VPR pack + place + route with fixed channel width."""
    os.makedirs(outdir, exist_ok=True)
    blif_path = os.path.join(PART3_DIR, f"{blif}.blif")
    cmd = [
        VPR, ARCH, blif_path,
        "--pack", "--place", "--route",
        "--route_chan_width", str(chan_width),
    ]
    if extra_args:
        cmd.extend(extra_args)

    if dry_run:
        print(f"  [DRY-RUN] {' '.join(cmd)}")
        return "", 0

    print(f"  Running: {blif} W={chan_width} {' '.join(extra_args or [])}")
    result = subprocess.run(cmd, cwd=outdir, capture_output=True, text=True, timeout=3600)

    with open(os.path.join(outdir, "vpr_stdout.log"), "w") as f:
        f.write(result.stdout)
    with open(os.path.join(outdir, "vpr_stderr.log"), "w") as f:
        f.write(result.stderr)

    return result.stdout, result.returncode


def study1(benchmarks, seeds, dry_run=False):
    """Study #1: max_criticality 0.5, fixed W, multiple seeds."""
    print("\n=== Routing Study #1: max_criticality 0.5 ===")
    for bench in benchmarks:
        w = FIXED_W[bench]
        for seed in seeds:
            outdir = os.path.join(RESULTS_DIR, "study1", bench, f"seed{seed}")
            print(f"\n[{bench}/seed{seed}] W={w}")
            stdout, rc = run_vpr_routing(
                bench, outdir, w,
                extra_args=["--max_criticality", "0.5", "--seed", str(seed)],
                dry_run=dry_run
            )
            if not dry_run and rc != 0:
                print(f"  ERROR: rc={rc}")


def study2(benchmarks, seeds, dry_run=False):
    """Study #2: Explore routing parameters."""
    print("\n=== Routing Study #2: Parameter Exploration ===")
    for bench in benchmarks:
        w = FIXED_W[bench]
        for config_name, params in PARAM_CONFIGS.items():
            for seed in seeds:
                outdir = os.path.join(RESULTS_DIR, "study2", bench, config_name, f"seed{seed}")
                extra = ["--seed", str(seed)]
                for k, v in params.items():
                    extra.extend([k, v])
                print(f"\n[{bench}/{config_name}/seed{seed}] W={w}")
                stdout, rc = run_vpr_routing(
                    bench, outdir, w,
                    extra_args=extra,
                    dry_run=dry_run
                )
                if not dry_run and rc != 0:
                    print(f"  ERROR: rc={rc}")


def study3(benchmarks, seeds, dry_run=False):
    """Study #3: Disable A* routing (astar_fac 0)."""
    print("\n=== Routing Study #3: No A* (astar_fac=0) ===")
    for bench in benchmarks:
        w = FIXED_W[bench]
        for seed in seeds:
            outdir = os.path.join(RESULTS_DIR, "study3", bench, f"seed{seed}")
            print(f"\n[{bench}/seed{seed}] W={w}, astar_fac=0")
            stdout, rc = run_vpr_routing(
                bench, outdir, w,
                extra_args=["--max_criticality", "0.5", "--astar_fac", "0", "--seed", str(seed)],
                dry_run=dry_run
            )
            if not dry_run and rc != 0:
                print(f"  ERROR: rc={rc}")


def generate_slurm(study_num):
    """Generate SLURM scripts."""
    slurm_dir = os.path.join(RESULTS_DIR, f"study{study_num}", "slurm_jobs")
    os.makedirs(slurm_dir, exist_ok=True)
    scripts = []

    if study_num in (1, 3):
        for bench in BENCHMARKS:
            name = f"p3route{study_num}_{bench}"
            script = f"""#!/bin/bash
#SBATCH --job-name={name}
#SBATCH --output={slurm_dir}/{name}_%j.out
#SBATCH --error={slurm_dir}/{name}_%j.err
#SBATCH --time=01:00:00
#SBATCH --mem=4G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr
cd {PART3_DIR}

for SEED in 1 2 3; do
    python run_routing.py --study {study_num} --bench {bench} --seed $SEED
done
"""
            path = os.path.join(slurm_dir, f"{name}.sh")
            with open(path, "w") as f:
                f.write(script)
            scripts.append(path)

    elif study_num == 2:
        for bench in BENCHMARKS:
            name = f"p3route2_{bench}"
            script = f"""#!/bin/bash
#SBATCH --job-name={name}
#SBATCH --output={slurm_dir}/{name}_%j.out
#SBATCH --error={slurm_dir}/{name}_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=4G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr
cd {PART3_DIR}

for SEED in 1 2 3; do
    python run_routing.py --study 2 --bench {bench} --seed $SEED
done
"""
            path = os.path.join(slurm_dir, f"{name}.sh")
            with open(path, "w") as f:
                f.write(script)
            scripts.append(path)

    submit_path = os.path.join(slurm_dir, "submit_all.sh")
    with open(submit_path, "w") as f:
        f.write("#!/bin/bash\n")
        for s in scripts:
            f.write(f"sbatch {s}\n")
        f.write(f"echo 'Submitted {len(scripts)} jobs'\n")
    os.chmod(submit_path, 0o755)
    print(f"Created {len(scripts)} SLURM scripts in {slurm_dir}")
    print(f"Submit: {submit_path}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--study", choices=["1", "2", "3", "all"], default="all")
    parser.add_argument("--bench", type=str, default=None)
    parser.add_argument("--seed", type=int, default=None)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--slurm", action="store_true")
    args = parser.parse_args()

    benchmarks = [args.bench] if args.bench else BENCHMARKS
    seeds = [args.seed] if args.seed is not None else SEEDS

    if args.slurm:
        studies = [1, 2, 3] if args.study == "all" else [int(args.study)]
        for s in studies:
            generate_slurm(s)
        return

    if args.study in ("1", "all"):
        study1(benchmarks, seeds, args.dry_run)
    if args.study in ("2", "all"):
        study2(benchmarks, seeds, args.dry_run)
    if args.study in ("3", "all"):
        study3(benchmarks, seeds, args.dry_run)


if __name__ == "__main__":
    main()
