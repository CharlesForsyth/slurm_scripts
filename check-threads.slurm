#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=0-00:00:30     # 0 day and 00 minutes and 30 sec

export OMP_NUM_THREADS=$SLURM_NTASKS
echo $OMP_NUM_THREADS

