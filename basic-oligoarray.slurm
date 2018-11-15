#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=3
#SBATCH --time=0-01:30:00 

module load oligoarray

cd $SLURM_SUBMIT_DIR

inputfile=sample200.fas
outputfile=sample_outputfile.txt


starttime=$(date +%s)

java -Xmx512m -jar $OLIGOARRAYDIR/OligoArray2.jar -i $inputfile -d $SLURM_SUBMIT_DIR/BlastDb/maize_all25.fas -o $outputfile -n 1 -l 20 -L 20 -D 25 -t 74 -T 82 -s 50 -x 30 -p 45 -P 60 -N 3 -m "GGG;CCC;TTT;AAA"

endtime=$(date +%s)
walltime=$endtime-$starttime
echo $walltime
