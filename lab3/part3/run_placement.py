#!/usr/bin/env python3
"""
Part 3 — Placement Study

#1: Default placement, extract cost vs temperature curves from VPR log
#2: 5 different init_t values × 5 seeds, report mean/std of final score
#3: Compare normal VTR vs modified VTR (greedy swaps)

Usage:
  python run_placement.py [--study {1,2,3,all}] [--dry-run] [--slurm]
"""

import argparse
import subprocess
import os
import json
import re

VPR = "/packages/apps/vtr/8.0.0-git/vpr/vpr"
VPR_MODIFIED = "/data/courses/class_cse494598cen571spring2026_aaror112/vtr_modified/vtr-verilog-to-routing/vpr/vpr"
ARCH = "/packages/apps/vtr/8.0.0-git/vtr_flow/arch/timing/k6_frac_N10_mem32K_40nm.xml"
PART3_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(PART3_DIR, "results", "placement")

BENCHMARKS = ["alu4", "ex4p", "diffeq1", "sha"]

# Study #2: 5 different starting temperatures
INIT_TEMPS = [1e-3, 1e-2, 1e-1, 1.0, 10.0]
SEEDS_STUDY2 = [1, 2, 3, 4, 5]

# Study #1 and #3: seeds
SEEDS_DEFAULT = [1, 2, 3]


def run_vpr_placement(vpr_bin, blif, outdir, extra_args=None, dry_run=False):
    """Run VPR placement only."""
    os.makedirs(outdir, exist_ok=True)
    blif_path = os.path.join(PART3_DIR, f"{blif}.blif")
    cmd = [
        vpr_bin, ARCH, blif_path,
        "--pack", "--place",
        "--place_algorithm", "bounding_box",
        "--RL_agent_placement", "off",
    ]
    if extra_args:
        cmd.extend(extra_args)

    if dry_run:
        print(f"  [DRY-RUN] {' '.join(cmd)}")
        return "", 0

    print(f"  Running: {os.path.basename(vpr_bin)} {blif} {' '.join(cmd[3:])}")
    result = subprocess.run(cmd, cwd=outdir, capture_output=True, text=True, timeout=3600)

    with open(os.path.join(outdir, "vpr_stdout.log"), "w") as f:
        f.write(result.stdout)
    with open(os.path.join(outdir, "vpr_stderr.log"), "w") as f:
        f.write(result.stderr)

    return result.stdout, result.returncode


def study1(dry_run=False):
    """Study #1: Default placement, extract cost vs temperature."""
    print("\n=== Placement Study #1: Cost vs Temperature ===")
    for bench in BENCHMARKS:
        for seed in SEEDS_DEFAULT:
            outdir = os.path.join(RESULTS_DIR, "study1", bench, f"seed{seed}")
            print(f"\n[{bench}/seed{seed}]")
            stdout, rc = run_vpr_placement(
                VPR, bench, outdir,
                extra_args=["--seed", str(seed)],
                dry_run=dry_run
            )
            if not dry_run and rc != 0:
                print(f"  ERROR: rc={rc}")


def study2(dry_run=False):
    """Study #2: 5 init_t values × 5 seeds."""
    print("\n=== Placement Study #2: Starting Temperature Exploration ===")
    for bench in BENCHMARKS:
        for init_t in INIT_TEMPS:
            for seed in SEEDS_STUDY2:
                t_label = f"t{init_t:.0e}".replace("+", "")
                outdir = os.path.join(RESULTS_DIR, "study2", bench, t_label, f"seed{seed}")
                print(f"\n[{bench}/{t_label}/seed{seed}]")
                stdout, rc = run_vpr_placement(
                    VPR, bench, outdir,
                    extra_args=["--seed", str(seed), "--init_t", str(init_t)],
                    dry_run=dry_run
                )
                if not dry_run and rc != 0:
                    print(f"  ERROR: rc={rc}")


def study3(dry_run=False):
    """Study #3: Normal vs modified VTR (greedy swaps)."""
    print("\n=== Placement Study #3: Normal vs Greedy Swaps ===")
    for vpr_label, vpr_bin in [("normal", VPR), ("greedy", VPR_MODIFIED)]:
        for bench in BENCHMARKS:
            for seed in SEEDS_DEFAULT:
                outdir = os.path.join(RESULTS_DIR, "study3", vpr_label, bench, f"seed{seed}")
                print(f"\n[{vpr_label}/{bench}/seed{seed}]")
                stdout, rc = run_vpr_placement(
                    vpr_bin, bench, outdir,
                    extra_args=["--seed", str(seed)],
                    dry_run=dry_run
                )
                if not dry_run and rc != 0:
                    print(f"  ERROR: rc={rc}")


def generate_slurm(study_num):
    """Generate SLURM scripts for a placement study."""
    slurm_dir = os.path.join(RESULTS_DIR, f"study{study_num}", "slurm_jobs")
    os.makedirs(slurm_dir, exist_ok=True)
    scripts = []

    if study_num == 1:
        for bench in BENCHMARKS:
            name = f"p3place1_{bench}"
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
    python run_placement.py --study 1 --bench ${{BENCH:-{bench}}} --seed $SEED
done
"""
            path = os.path.join(slurm_dir, f"{name}.sh")
            with open(path, "w") as f:
                f.write(script)
            scripts.append(path)

    elif study_num == 2:
        for bench in BENCHMARKS:
            name = f"p3place2_{bench}"
            script = f"""#!/bin/bash
#SBATCH --job-name={name}
#SBATCH --output={slurm_dir}/{name}_%j.out
#SBATCH --error={slurm_dir}/{name}_%j.err
#SBATCH --time=02:00:00
#SBATCH --mem=4G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr
cd {PART3_DIR}

python run_placement.py --study 2 --bench {bench}
"""
            path = os.path.join(slurm_dir, f"{name}.sh")
            with open(path, "w") as f:
                f.write(script)
            scripts.append(path)

    elif study_num == 3:
        for bench in BENCHMARKS:
            name = f"p3place3_{bench}"
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

python run_placement.py --study 3 --bench {bench}
"""
            path = os.path.join(slurm_dir, f"{name}.sh")
            with open(path, "w") as f:
                f.write(script)
            scripts.append(path)

    # Master submit
    submit_path = os.path.join(slurm_dir, f"submit_all.sh")
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

    # Filter benchmarks if specified
    global BENCHMARKS
    if args.bench:
        BENCHMARKS = [args.bench]

    if args.slurm:
        studies = [1, 2, 3] if args.study == "all" else [int(args.study)]
        for s in studies:
            generate_slurm(s)
        return

    # For single seed runs (from SLURM)
    if args.seed is not None:
        global SEEDS_DEFAULT, SEEDS_STUDY2
        SEEDS_DEFAULT = [args.seed]
        SEEDS_STUDY2 = [args.seed]

    if args.study in ("1", "all"):
        study1(args.dry_run)
    if args.study in ("2", "all"):
        study2(args.dry_run)
    if args.study in ("3", "all"):
        study3(args.dry_run)


if __name__ == "__main__":
    main()
