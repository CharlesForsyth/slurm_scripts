#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=0-00:00:30     # 0 day and 00 minutes and 30 sec
#SBATCH --job-name="print-env"
#SBATCH --output=env.out


echo " showing env "
echo "--------"
printenv 
echo "--------"
