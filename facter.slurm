#!/bin/bash -l

#SBATCH --nodes=4
#SBATCH --ntasks=4
####SBATCH --output=facter.out
#SBATCH --job-name="test"

#SBATCH --time=00:00:60

echo "--------"
#srun facter system_uptime.days fqdn
srun hostname
echo "--------"

#echo " showing env "
#echo "--------"
#srun printenv | grep SLURM
#echo "--------"
