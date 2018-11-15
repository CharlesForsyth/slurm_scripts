#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --mem=10gb
#SBATCH --time=0-01:00:00     # 0 day and 15 minutes


date

# Load GCTA
module load gcta/1.26.0

# Change directory to where you submitted the job from, so that relative paths resolve properly
cd $SLURM_SUBMIT_DIR

time gcta64 --thread-num $SLURM_NTASKS --reml --grm test --pheno test.phen --out test 


# Print name of node
