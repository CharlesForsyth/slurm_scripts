#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --mem=46gb
#SBATCH -p batch
#SBATCH --time=0-00:02:00     # 0 day and 15 minutes


#/opt/linux/centos/7.x/x86_64/pkgs/stress/1.0.4/bin/stress --cpu $SLURM_NTASKS
/opt/linux/centos/7.x/x86_64/pkgs/stress/1.0.4/bin/stress -m 1 --vm-bytes 44g
