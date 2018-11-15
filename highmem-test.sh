#!/bin/sh


#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem-per-cpu=24G
#SBATCH --time=14-00:00:00
#SBATCH --mail-user=chuck.forsyth@gmail.com
#SBATCH --job-name="highmem"

/bin/sleep 60
