#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=8 # asking for 8 cpus
#SBATCH --time=0-48:00:00     # this means 48 hours
#SBATCH --job-name="Name-you-give-it"
#SBATCH -p intel,batch # This is the default partition, you can use any of the following; intel, batch, highmem, gpu


module load hmmer
hmmscan --cpu 8 -o xinn.pfamA.out --tblout xinn.pfamA.tblout --domtblout xinn.pfamA.domtblout -E 0.000001 /srv/projects/db/pfam/2011-12-09-Pfam26.0/Pfam-A.hmm Xinn1.fa
