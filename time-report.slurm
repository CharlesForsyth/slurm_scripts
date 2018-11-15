#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name="timer"
#SBATCH --time=01:00:00


starttime=$(date +%s)


/bin/sleep 10


endtime=$(date +%s)
walltime=`expr $endtime - $starttime`
echo "Job ran for:" $walltime
echo "Number of CPUs:" $SLURM_CPUS_ON_NODE

