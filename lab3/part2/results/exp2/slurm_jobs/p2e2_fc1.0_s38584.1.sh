#!/bin/bash
#SBATCH --job-name=p2e2_fc1.0_s38584.1
#SBATCH --output=/home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2/results/exp2/slurm_jobs/p2e2_fc1.0_s38584.1_%j.out
#SBATCH --error=/home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2/results/exp2/slurm_jobs/p2e2_fc1.0_s38584.1_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=8G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr

cd /home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2

for SEED in 1 2 3; do
    echo "=== Running fc1.0 / s38584.1 / seed $SEED ==="
    python run_part2.py --experiment 2 --arch fc1.0 --bench s38584.1 --seeds $SEED
done

echo "=== Done ==="
