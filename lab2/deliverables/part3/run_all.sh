#!/bin/bash
# Run all Vitis HLS solutions for Part 3 Design Space Exploration
# Usage: bash run_all.sh
# Must be run from the directory CONTAINING the lab2 folder (i.e. cd to parent of lab2/)

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
WORK_DIR="$(dirname "$SCRIPT_DIR")"


SOLUTIONS=(
    baseline
    pipe_inner
    unroll2
    unroll16
    part_cyc2
    pipe_part_complete
    pipe_col
    pipe_row_full
    unroll4_blk4
    pipe_ii2_cyc8
)

cd "$WORK_DIR"

echo "============================================"
echo "Running all HLS solutions from: $(pwd)"
echo "============================================"

for sol in "${SOLUTIONS[@]}"; do
    echo ""
    echo "--------------------------------------------"
    echo "  Running solution: $sol"
    echo "--------------------------------------------"
    vitis_hls -f "lab2/${sol}/script.tcl" 2>&1 | tee "lab2/${sol}/run.log"
    echo "  Done: $sol"
done

echo ""
echo "============================================"
echo "All solutions completed."
echo "============================================"
