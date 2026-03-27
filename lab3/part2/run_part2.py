#!/usr/bin/env python3
"""
Part 2: Routing Architecture Evaluation
Automates VPR runs for Experiment 1 (wire length) and Experiment 2 (Fc).

Workflow per (architecture, benchmark, seed):
  1. Run VPR to find minimum channel width W
  2. Compute low-stress W' = ceil(1.3 * W), rounded up to even
  3. Re-run VPR at fixed channel width W'

Usage:
  python run_part2.py [--experiment {1,2,both}] [--seeds 1 2 3] [--dry-run] [--slurm]
"""

import argparse
import subprocess
import os
import sys
import math
import re
import json
from pathlib import Path

VPR = "/packages/apps/vtr/8.0.0-git/vpr/vpr"
BENCH_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "a4_benchmarks")
ARCH_DIR = os.path.dirname(os.path.abspath(__file__))
RESULTS_DIR = os.path.join(ARCH_DIR, "results")

BENCHMARKS = [
    "clma", "elliptic", "ex1010", "frisc",
    "pdc", "s38417", "s38584.1", "spla"
]

EXP1_ARCHS = {
    "L1":  "k6_N10_40nm_L1.xml",
    "L4":  "k6_N10_40nm_L4.xml",
    "L16": "k6_N10_40nm_L16.xml",
}

EXP2_ARCHS = {
    "fc0.15": "k6_N10_40nm_fc0.15.xml",
    "fc0.5":  "k6_N10_40nm_fc0.5.xml",
    "fc1.0":  "k6_N10_40nm_fc1.0.xml",
}

DEFAULT_SEEDS = [1, 2, 3]


def round_up_even(x):
    """Round up to next even integer."""
    val = math.ceil(x)
    if val % 2 != 0:
        val += 1
    return val


def parse_min_chan_width(vpr_stdout):
    """Parse minimum channel width from VPR output."""
    for line in vpr_stdout.split('\n'):
        m = re.search(r'Best routing used a channel width factor of (\d+)', line)
        if m:
            return int(m.group(1))
    return None


def run_vpr(arch_path, blif_path, outdir, extra_args=None, dry_run=False):
    """Run VPR and return (stdout, return_code)."""
    os.makedirs(outdir, exist_ok=True)
    cmd = [
        VPR, arch_path, blif_path,
        "--pack", "--place", "--route",
    ]
    if extra_args:
        cmd.extend(extra_args)

    if dry_run:
        print(f"  [DRY-RUN] {' '.join(cmd)}")
        print(f"  [DRY-RUN] cwd={outdir}")
        return "", 0

    print(f"  Running: {' '.join(os.path.basename(c) for c in cmd[:3])} {' '.join(cmd[3:])}")
    result = subprocess.run(
        cmd, cwd=outdir, capture_output=True, text=True, timeout=7200
    )
    # Save logs
    with open(os.path.join(outdir, "vpr_stdout.log"), "w") as f:
        f.write(result.stdout)
    with open(os.path.join(outdir, "vpr_stderr.log"), "w") as f:
        f.write(result.stderr)
    return result.stdout, result.returncode


def run_single(arch_name, arch_file, bench, seed, experiment, dry_run=False):
    """Run min-W search + low-stress routing for one (arch, bench, seed) combo."""
    arch_path = os.path.join(ARCH_DIR, arch_file)
    blif_path = os.path.join(BENCH_DIR, f"{bench}.blif")
    base_dir = os.path.join(RESULTS_DIR, f"exp{experiment}", arch_name, bench, f"seed{seed}")

    # Step 1: Find minimum channel width
    minw_dir = os.path.join(base_dir, "min_w")
    print(f"\n[{arch_name}/{bench}/seed{seed}] Step 1: Finding min channel width...")
    stdout, rc = run_vpr(arch_path, blif_path, minw_dir,
                         extra_args=["--seed", str(seed)], dry_run=dry_run)

    if dry_run:
        min_w = 100  # placeholder
    else:
        if rc != 0:
            print(f"  ERROR: VPR min-W failed (rc={rc}). Check {minw_dir}/vpr_stderr.log")
            return None
        min_w = parse_min_chan_width(stdout)
        if min_w is None:
            print(f"  ERROR: Could not parse min channel width from VPR output")
            return None

    print(f"  Min channel width: {min_w}")

    # Step 2: Compute low-stress channel width
    low_stress_w = round_up_even(1.3 * min_w)
    print(f"  Low-stress channel width (1.3x): {low_stress_w}")

    # Step 3: Run at low-stress channel width
    ls_dir = os.path.join(base_dir, "low_stress")
    print(f"[{arch_name}/{bench}/seed{seed}] Step 2: Running at W={low_stress_w}...")
    stdout, rc = run_vpr(arch_path, blif_path, ls_dir,
                         extra_args=["--route_chan_width", str(low_stress_w), "--seed", str(seed)],
                         dry_run=dry_run)

    if not dry_run and rc != 0:
        print(f"  ERROR: VPR low-stress failed (rc={rc}). Check {ls_dir}/vpr_stderr.log")
        return None

    # Save metadata
    meta = {"arch": arch_name, "bench": bench, "seed": seed,
            "min_w": min_w, "low_stress_w": low_stress_w}
    meta_path = os.path.join(base_dir, "meta.json")
    if not dry_run:
        with open(meta_path, "w") as f:
            json.dump(meta, f, indent=2)

    return meta


def generate_slurm_scripts(archs, experiment, seeds):
    """Generate SLURM job scripts for each (arch, benchmark) pair."""
    slurm_dir = os.path.join(RESULTS_DIR, f"exp{experiment}", "slurm_jobs")
    os.makedirs(slurm_dir, exist_ok=True)

    job_scripts = []
    for arch_name, arch_file in archs.items():
        for bench in BENCHMARKS:
            job_name = f"p2e{experiment}_{arch_name}_{bench}"
            script_path = os.path.join(slurm_dir, f"{job_name}.sh")
            seeds_str = " ".join(str(s) for s in seeds)

            script = f"""#!/bin/bash
#SBATCH --job-name={job_name}
#SBATCH --output={slurm_dir}/{job_name}_%j.out
#SBATCH --error={slurm_dir}/{job_name}_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=8G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr

cd {ARCH_DIR}

for SEED in {seeds_str}; do
    echo "=== Running {arch_name} / {bench} / seed $SEED ==="
    python run_part2.py --experiment {experiment} --arch {arch_name} --bench {bench} --seeds $SEED
done

echo "=== Done ==="
"""
            with open(script_path, "w") as f:
                f.write(script)
            job_scripts.append(script_path)
            print(f"  Created {script_path}")

    # Master submission script
    submit_path = os.path.join(slurm_dir, f"submit_all_exp{experiment}.sh")
    with open(submit_path, "w") as f:
        f.write("#!/bin/bash\n")
        f.write(f"# Submit all Experiment {experiment} jobs\n\n")
        for s in job_scripts:
            f.write(f"sbatch {s}\n")
        f.write(f"\necho 'Submitted {len(job_scripts)} jobs'\n")
    os.chmod(submit_path, 0o755)
    print(f"\nMaster submit script: {submit_path}")
    print(f"Total jobs: {len(job_scripts)}")
    return submit_path


def main():
    parser = argparse.ArgumentParser(description="Part 2: Routing Architecture Evaluation")
    parser.add_argument("--experiment", choices=["1", "2", "both"], default="both",
                        help="Which experiment to run")
    parser.add_argument("--seeds", nargs="+", type=int, default=DEFAULT_SEEDS,
                        help="Seeds to use")
    parser.add_argument("--arch", type=str, default=None,
                        help="Run only this architecture variant")
    parser.add_argument("--bench", type=str, default=None,
                        help="Run only this benchmark")
    parser.add_argument("--dry-run", action="store_true",
                        help="Print commands without running")
    parser.add_argument("--slurm", action="store_true",
                        help="Generate SLURM job scripts instead of running directly")
    args = parser.parse_args()

    experiments = []
    if args.experiment in ("1", "both"):
        experiments.append(("1", EXP1_ARCHS))
    if args.experiment in ("2", "both"):
        experiments.append(("2", EXP2_ARCHS))

    if args.slurm:
        for exp_num, archs in experiments:
            print(f"\n=== Generating SLURM scripts for Experiment {exp_num} ===")
            generate_slurm_scripts(archs, exp_num, args.seeds)
        return

    for exp_num, archs in experiments:
        print(f"\n{'='*60}")
        print(f"Experiment {exp_num}")
        print(f"{'='*60}")

        for arch_name, arch_file in archs.items():
            if args.arch and args.arch != arch_name:
                continue
            for bench in BENCHMARKS:
                if args.bench and args.bench != bench:
                    continue
                for seed in args.seeds:
                    run_single(arch_name, arch_file, bench, seed, exp_num, args.dry_run)


if __name__ == "__main__":
    main()
