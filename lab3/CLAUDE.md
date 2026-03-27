# Lab 3: FPGA Architecture and CAD Exploration using VTR

## Course
CEN 571/CSE 598/CSE 494 - Reconfigurable Computing, Spring 2026, ASU

## Overview
This lab uses the VTR (Verilog-to-Routing) framework to explore FPGA architectures and CAD algorithms. VTR consists of:
- **Parmys** (synthesis)
- **ABC** (logic optimization + tech mapping)
- **VPR** (packing, placement & routing)

## VTR Installation on SOL Cluster
```bash
module load vtr/8.0.0-git
source activate vtr
```
- VTR_ROOT = `/packages/apps/vtr/8.0.0-git/`
- **Always use the full path** — `$VTR_ROOT` is NOT an environment variable
- Architecture files: `VTR_ROOT/vtr_flow/arch/timing/`
- Benchmarks (Verilog): `VTR_ROOT/vtr_flow/benchmarks/verilog/`
- BLIF benchmarks: `VTR_ROOT/vtr_flow/benchmarks/blif/6/`

## Three Parts

### Part 1 — Logic Block Architecture Evaluation
- **Method**: Use `run_vtr_task.py` with task config
- **Architectures**:
  - Arch1: `k6_N10_mem32K_40nm.xml` (basic 6-LUT)
  - Arch2: `k6_frac_N10_frac_chain_depop50_mem32K_40nm.xml` (fracturable LUT + carry chain)
  - Arch3: Modified Arch1 with N=5, I=20, O=5, area halved
- **Benchmarks**: VTR benchmarks with <15,000 netlist primitives (from VTR 8 paper Table 26/27)
- **Config**: Fixed channel width 300 (`script_params=--track_memory_usage -route_chan_width 300`)
- **Metrics**: Used logic area + total routing area, critical path delay (1/frequency)
- **Reporting**: Charts comparing area and frequency per benchmark + geometric mean across benchmarks
- Parse file: change to `vpr_fixed_chan_width.txt` for critical path delay, or use `timing/vpr.route_fixed_chan_width.txt`

### Part 2 — Routing Architecture Evaluation
- **Method**: Run VPR directly or via `run_vtr_task.py` with `-starting_stage vpr`
- **Base architecture**: `k6_N10_40nm.xml` (already in lab3 directory as `k6_N10_sparse_crossbar_40nm.xml` for extra credit)
- **Benchmarks**: 8 pre-synthesized .blif files in `a4_benchmarks/`
- **Two-step VPR runs**: First find min channel width W, then re-run at 1.3W (low-stress routing)
- **Experiment 1 — Wire Length**: L=1, L=4, L=16 variants of architecture
- **Experiment 2 — Fc (Connection Box)**: Fcin=Fcout = 0.15, 0.5, 1.0
- **Seeds**: Average over 3-5 seeds (arithmetic mean across seeds, geometric mean across benchmarks)
- **Metrics**: Min channel width, low-stress routing area, low-stress critical path delay

### Part 3 — CAD Algorithm Evaluation
- **Architecture**: `k6_frac_N10_mem32K_40nm.xml`
- **Benchmarks**: 4 circuits — alu4.blif, ex4p.blif, diffeq1.blif (generate via run_vtr_flow.py -end abc), sha.blif (same)

#### Placement Study
- VPR options: `--pack --place --place_algorithm bounding_box --RL_agent_placement off`
- Use `-starting_stage vpr` if using run_vtr_task.py
- **#1**: Plot cost/score ("Av BB Cost") vs temperature ("T") from vpr.out log files
- **#2**: Run with 5 different starting temperatures (`-init_t`), 5 seeds each. Report mean/std of final score
- **#3**: Use modified VTR (greedy swaps) at `/data/courses/class_cse494598cen571spring2026_aaror112/vtr_modified/vtr-verilog-to-routing/`. Compare with normal results

#### Routing Study (use original unmodified VTR)
- **#1**: Run with `--max_criticality 0.5`, fixed W per benchmark (40 alu4, 60 diffeq1, 50 ex4p, 60 sha), 3+ seeds
- **#2**: Explore routing parameters (initial_pres_fac, pres_fac_mult, acc_fac, bb_factor, astar_fac, max_criticality, criticality_exp, router_max_convergence_count)
- **#3**: Disable A* routing with `--astar_fac 0`, repeat #1

## Key Notes
- **Averaging**: Arithmetic mean across seeds, geometric mean across benchmarks
- **Channel width**: Must be divisible by 2 (unidirectional routing)
- **Python parsing scripts required** — write scripts to parse VPR log files and generate CSVs
- **LLMs allowed** for writing parsing/automation scripts
- **Deliverables**: zip with part1/, part2/, part3/ folders + PDF report + parsing scripts + README per folder

## Directory Structure
```
lab3/
├── CLAUDE.md
├── RC_Lab3.pdf              # Lab specification
├── Lab 3 Supplement RC.pdf  # Supplement slides
├── k6_N10_sparse_crossbar_40nm.xml  # Extra credit architecture
├── a4_benchmarks/           # 8 pre-synthesized .blif benchmarks for Part 2
│   ├── clma.blif
│   ├── elliptic.blif
│   ├── ex1010.blif
│   ├── frisc.blif
│   ├── pdc.blif
│   ├── s38417.blif
│   ├── s38584.1.blif
│   └── spla.blif
├── part1/                   # To be created
├── part2/                   # To be created
└── part3/                   # To be created
```
