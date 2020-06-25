#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 5-0:00:00
#SBATCH -o slurm.%N.%j.out
#SBATCH -e slurm.%N.%j.err

# submit this script from your /n/holyscratch01/informatics/hetAtr by typing sbatch hetAtr_bwa.sh


module load bwa/0.7.17-fasrc01
bwa index -p hetAtr 00_genome/GCA_011075105.1_BPBGC_Hatr_1.0_genomic.fna.gz





