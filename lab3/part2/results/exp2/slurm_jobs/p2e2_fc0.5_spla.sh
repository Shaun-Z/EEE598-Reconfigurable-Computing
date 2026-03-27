#!/bin/bash
#SBATCH --job-name=p2e2_fc0.5_spla
#SBATCH --output=/home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2/results/exp2/slurm_jobs/p2e2_fc0.5_spla_%j.out
#SBATCH --error=/home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2/results/exp2/slurm_jobs/p2e2_fc0.5_spla_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=8G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr

cd /home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2

for SEED in 1 2 3; do
    echo "=== Running fc0.5 / spla / seed $SEED ==="
    python run_part2.py --experiment 2 --arch fc0.5 --bench spla --seeds $SEED
done

echo "=== Done ==="
