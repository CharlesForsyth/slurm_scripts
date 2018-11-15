#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=10 # asking for 10 cpus
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=0-00:15:00     # 0 day and 15 minutes
#SBATCH --output=my.stdout
#SBATCH --mail-user=forsythc@ucr.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name="just_a_test"
#SBATCH -p intel # This is the default partition, you can use any of the following; intel, batch, highmem, gpu

date

hostname
