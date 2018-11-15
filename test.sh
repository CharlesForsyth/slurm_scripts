#!/bin/bash -l

#SBATCH --nodes=4
#SBATCH --ntasks=4
#SBATCH --output=mutinode.out
#SBATCH --job-name="test"

#SBATCH --time=00:00:60

echo "--------"
srun hostname
echo "--------"

#echo " showing env "
#echo "--------"
#srun printenv | grep SLURM
#echo "--------"
