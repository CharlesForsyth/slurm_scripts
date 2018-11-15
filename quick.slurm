#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name="sleep60"
#SBATCH --time=00:00:05

hostname
