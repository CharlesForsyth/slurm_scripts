#!/bin/bash -l

#SBATCH --ntasks=6
#SBATCH --ntasks-per-node=1
#SBATCH --job-name="mNt"
#SBATCH -p batch,short,intel

#SBATCH --time=00:00:30

echo "--------"
srun hostname
echo "--------"

