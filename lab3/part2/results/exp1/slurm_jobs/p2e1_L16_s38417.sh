#!/bin/bash
#SBATCH --job-name=p2e1_L16_s38417
#SBATCH --output=/home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2/results/exp1/slurm_jobs/p2e1_L16_s38417_%j.out
#SBATCH --error=/home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2/results/exp1/slurm_jobs/p2e1_L16_s38417_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=8G
#SBATCH --cpus-per-task=1
#SBATCH --partition=htc

module load vtr/8.0.0-git
source activate vtr

cd /home/xzhou185/EEE598-Reconfigurable-Computing/lab3/part2

for SEED in 1 2 3; do
    echo "=== Running L16 / s38417 / seed $SEED ==="
    python run_part2.py --experiment 1 --arch L16 --bench s38417 --seeds $SEED
done

echo "=== Done ==="
