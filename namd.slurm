#!/bin/bash -l

#SBATCH -J c3d_cr2_md
#SBATCH -p batch
#SBATCH --ntasks=256
#SBATCH --mem=16gb
#SBATCH --time=01:00:00

# Load needed modules
# You could also load frequently used modules from within your ~/.bashrc
module load slurm # Should already be loaded
module load openmpi # Should already be loaded
module load namd

# Run job utilizing all requested processors
# Please visit the namd site for usage details: http://www.ks.uiuc.edu/Research/namd/
mpirun --mca btl ^tcp namd2 run.conf &> run_bio.log
