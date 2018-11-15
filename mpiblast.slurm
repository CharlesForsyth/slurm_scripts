#!/bin/bash -l

#SBATCH --nodes=4
#SBATCH --ntasks=128
#SBATCH --time=0-02:00:00 


module load mpiblast

cd $SLURM_SUBMIT_DIR

mpiformatdb -i mouse.1.protein.faa --nfrags=4

hosts=$(scontrol show hostname $SLURM_NODELIST| paste -d, -s)

echo $hosts

mpiexec -np 128 -hosts $hosts mpiblast -p blastp -i zebrafish.1.protein.faa -d mouse.1.protein.faa 
