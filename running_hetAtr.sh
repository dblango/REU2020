#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 60
#SBATCH -o slurm.%N.%j.out
#SBATCH -e slurm.%N.%j.err

# submit this script from your /n/holyscratch01/informatics/hetAtr by typing sbatch running_hetAtr.sh

for R1 in *1.fastq.gz;
do
sbatch map_samples.sh $R1 $R2
sleep 1
done
