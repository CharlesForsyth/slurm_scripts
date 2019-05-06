#!/bin/bash -l

#SBATCH --nodes=5
#SBATCH --ntasks=200
#SBATCH --output=mutinode.out
#SBATCH --job-name="test"
#SBATCH -p batch,short,intel

#SBATCH --time=00:01:00

module load openmpi/2.0.1-slurm-16.05.4
echo "--------"
mpirun mpi_hello_world 
echo "--------"

#echo " showing env "
#echo "--------"
#srun printenv | grep SLURM
#echo "--------"
