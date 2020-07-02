#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o bwa_mem.%N.%j.out
#SBATCH -e bwa_mem.%N.%j.err

# submit this script from /n/holyscratch01/informatics/blangod/hetAtr/ by typing sbatch map_samples.sh

module load bwa/0.7.17-fasrc01

#run mapping
bwa mem -t 8 -R '@RG\tID:hetAtr_ind12_L4_569\tSM:hetAtr_ind12_L4_569' 00_genome/hetAtr hetAtr_ind12_L4_569_1.fastq.gz hetAtr_ind12_L4_569_1.fastq.gz > hetAtr_ind12_L4_569.sam
