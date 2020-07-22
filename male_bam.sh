#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01

samtools merge -f -b indv1.txt indv1.final.bam male.final.bam
samtools merge -f -b indv2.txt indv2.final.bam male.final.bam
samtools merge -f -b indv3.txt indv3.final.bam male.final.bam
samtools merge -f -b indv11.txt indv11.final.bam male.final.bam
samtools merge -f -b indv12.txt indv12.final.bam male.final.bam
samtools merge -f -b indv13.txt indv13.final.bam male.final.bam
