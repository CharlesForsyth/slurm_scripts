#!/bin/bash -l

#SBATCH --nodes=6
#SBATCH --ntasks=6
#SBATCH --ntasks-per-node=1
#SBATCH --job-name="gpfs-perf"

#SBATCH --time=01:00:00

echo "--------"
srun /rhome/forsythc/bin/gpfsperf create seq ~/bigdata/perf-file1 -n 10g -r 1m -fsync;  hostname
#/rhome/forsythc/bin/gpfsperf create seq ~/bigdata/perf-file$1 -n 10g -r 1m -fsync;  hostname
#srun hostname ; hostname
#srun /rhome/forsythc/bin/gpfsperf read seq ~/bigdata/perf-file1 -r 1M ;  hostname
echo "--------"

