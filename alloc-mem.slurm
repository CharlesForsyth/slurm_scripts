#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --mem=50gb
#SBATCH -p batch
#SBATCH --time=0-00:11:00     # 0 day and 15 minutes


echo "begin allocating memory..."
for index in $(seq 1000); do
    value=$(seq -w -s '' $index $(($index + 100000)))
        eval array$index=$value
        done
        echo "...end allocating memory"

        echo "sleeping for 600"
        sleep 600
:
