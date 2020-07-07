#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-12:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01

samtools merge -b indv1.txt indv1.final.bam
samtools merge -b indv2.txt indv2.final.bam
samtools merge -b indv3.txt indv3.final.bam
samtools merge -b indv4.txt indv4.final.bam
samtools merge -b indv5.txt indv5.final.bam
samtools merge -b indv6.txt indv6.final.bam
samtools merge -b indv7.txt indv7.final.bam
samtools merge -b indv8.txt indv8.final.bam
samtools merge -b indv9.txt indv9.final.bam
samtools merge -b indv10.txt indv10.final.bam
samtools merge -b indv11.txt indv11.final.bam
samtools merge -b indv12.txt indv12.final.bam
samtools merge -b indv13.txt indv13.final.bam
samtools merge -b indv14.txt indv14.final.bam


