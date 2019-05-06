#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name="matplotlib"
#SBATCH --time=00:30:00
#SBATCH -p short

source activate matplolib

./test.py
