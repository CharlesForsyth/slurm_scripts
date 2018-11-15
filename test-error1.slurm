#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=32
#SBATCH --mem-per-cpu=16g
#SBATCH --time=3-00:00:00

echo " showing env "
echo "--------"
printenv | grep SLURM
echo "--------"
