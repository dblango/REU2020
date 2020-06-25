#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000 
#SBATCH -t 120
#SBATCH -o slurm.%N.%j.out
#SBATCH -e slurm.%N.%j.err

# submit this script from your home directory by typing sbatch hetAtr_bwa.sh


module load bwa/0.7.17-fasrc01
bwa index -p hetAtr GCA_011075105.1_BPBGC_Hatr_1.0_genomic.fna.gz
bwa mem -t 8 hetAtr hetAtr_ind01_L1_573_1.fastq.gz hetAtr_ind01_L1_573_2.fastq.gz > hetAtr_ind01_L1_573.sam
