#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --mail-user=forsythc@ucr.edu
#SBATCH --mail-type=ALL
#SBATCH --mem-per-cpu=4G
#SBATCH --output=jenkins-address
#SBATCH --time=30-00:00:00
#SBATCH -p intel


echo "Jenkins running at http://$(facter ipaddress):8080"
echo ""
echo ""
echo ""
echo ""
echo ""
udocker run js

