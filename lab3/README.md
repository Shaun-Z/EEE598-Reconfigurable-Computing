# Lab 3: FPGA Architecture and CAD Exploration using VTR

## Prerequisites

On SOL cluster:
```bash
module load vtr/8.0.0-git
source activate vtr
```

## Part 2 — Routing Architecture Evaluation

### Reproduce results

```bash
cd lab3/part2

# 1. Generate architecture XML variants (L=1/4/16, Fc=0.15/0.5/1.0)
python gen_archs.py

# 2a. Run all experiments locally (slow — ~hours)
python run_part2.py --experiment both --seeds 1 2 3

# 2b. Or submit to SLURM (recommended)
python run_part2.py --slurm --experiment both --seeds 1 2 3
bash results/exp1/slurm_jobs/submit_all_exp1.sh
bash results/exp2/slurm_jobs/submit_all_exp2.sh

# 3. Parse results into CSV
python parse_results.py
```

### Run a single (arch, benchmark, seed)
```bash
python run_part2.py --experiment 1 --arch L4 --bench frisc --seeds 1
```

### Output files
- `results/exp1/exp1_summary.csv` — Experiment 1 (wire length) summary with GEOMEAN
- `results/exp1/exp1_detailed.csv` — Per-seed detailed results
- `results/exp2/exp2_summary.csv` — Experiment 2 (Fc) summary with GEOMEAN
- `results/exp2/exp2_detailed.csv` — Per-seed detailed results

### Scripts
| File | Purpose |
|------|---------|
| `gen_archs.py` | Generate 6 architecture XML variants from base `k6_N10_40nm.xml` |
| `run_part2.py` | Automate VPR runs: min-W search + 1.3W low-stress routing |
| `parse_results.py` | Parse VPR logs, compute arithmetic mean (seeds) and geometric mean (benchmarks) |

---

## Part 3 — CAD Algorithm Evaluation

### Reproduce results

```bash
cd lab3/part3

# 1. Prepare benchmark BLIFs
#    alu4.blif, ex4p.blif — copy from VTR:
cp /packages/apps/vtr/8.0.0-git/vtr_flow/benchmarks/blif/6/{alu4,ex4p}.blif .
#    diffeq1.blif, sha.blif — synthesize from Verilog:
VTR_ROOT=/packages/apps/vtr/8.0.0-git
mkdir -p synth_diffeq1 && cd synth_diffeq1
python $VTR_ROOT/vtr_flow/scripts/run_vtr_flow.py $VTR_ROOT/vtr_flow/benchmarks/verilog/diffeq1.v $VTR_ROOT/vtr_flow/arch/timing/k6_frac_N10_mem32K_40nm.xml -end abc
cp temp/diffeq1.abc.blif ../diffeq1.blif && cd ..
# (repeat for sha)

# 2a. Run placement studies locally
python run_placement.py --study all

# 2b. Or submit to SLURM
python run_placement.py --slurm --study all
bash results/placement/study1/slurm_jobs/submit_all.sh
bash results/placement/study2/slurm_jobs/submit_all.sh
bash results/placement/study3/slurm_jobs/submit_all.sh

# 3a. Run routing studies locally
python run_routing.py --study all

# 3b. Or submit to SLURM
python run_routing.py --slurm --study all
bash results/routing/study1/slurm_jobs/submit_all.sh
bash results/routing/study2/slurm_jobs/submit_all.sh
bash results/routing/study3/slurm_jobs/submit_all.sh

# 4. Parse all results
python parse_results.py
```

### Placement Study
| Study | Description | Output |
|-------|-------------|--------|
| #1 | Default placement — cost vs temperature curves | `results/placement/study1/{bench}_cost_vs_temp.csv` |
| #2 | 5 init_t values × 5 seeds — mean/std of final cost | `results/placement/study2/study2_summary.csv` |
| #3 | Normal VTR vs modified VTR (greedy swaps) | `results/placement/study3/study3_summary.csv` |

### Routing Study
| Study | Description | Output |
|-------|-------------|--------|
| #1 | max_criticality=0.5, fixed W, 3 seeds | `results/routing/study1/study1_summary.csv` |
| #2 | Explore 17 routing parameter configs | `results/routing/study2/study2_summary.csv` |
| #3 | Disable A* (astar_fac=0), repeat #1 | `results/routing/study3/study3_summary.csv` |

### Scripts
| File | Purpose |
|------|---------|
| `run_placement.py` | Automate placement studies #1-#3 (normal + greedy VTR) |
| `run_routing.py` | Automate routing studies #1-#3 (parameter exploration) |
| `parse_results.py` | Parse VPR logs for placement curves, routing metrics, generate CSVs |
