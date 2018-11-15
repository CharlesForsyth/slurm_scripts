#!/bin/bash -l

#SBATCH --ntasks=8
#SBATCH --job-name="geneticA"




echo "--------"
#module load mpi/openmpi-x86_64
#module load conda
module unload python/2.7.5
module load python/2.7.13

time -p mpiexec python /hpcc/pkgs/libga_mpi/py/MOP5.py
echo "--------"

