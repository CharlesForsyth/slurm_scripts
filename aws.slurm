#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=0-00:30:00 



cd $SLURM_SUBMIT_DIR

mkdir $SLURM_JOB_ID 

cd $SLURM_JOB_ID

/bin/sleep 60


