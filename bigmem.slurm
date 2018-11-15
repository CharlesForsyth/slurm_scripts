#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name="bigmem-test"
#SBATCH --time=00:00:30
#SBATCH --mem=100gb
#SBATCH -p highmem

echo "--------"
srun hostname
free -g
echo "--------"

#echo " showing env "
#echo "--------"
#srun printenv | grep SLURM
#echo "--------"
