#!/bin/bash -l

sbatch <<EOT
#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem-per-cpu=1G
#SBATCH --time=24:00:00     # 24 hours
#SBATCH --output="logs/r"$1"_"$2"_"$3".stdout"
#SBATCH --mail-user=jwang131@ucr.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name="fz_"$3"" 
#SBATCH -p intel # This is the default partition, you can use any of the following; intel, batch, highmem, gpu


# Print current date

# Change directory to where you submitted the job from, so that relative paths resolve properly
# cd hybrid-fuzz


date
echo $1 $2 $3
#python start_afl.py --round $1 --mode $2 --csid $3

EOT

