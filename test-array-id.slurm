#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=01:00:00


echo "The Slurm Job ID is: "$SLURM_JOBID", The Slurm Array task ID is: "$SLURM_ARRAY_TASK_ID
echo $1
printenv | grep SLURM
