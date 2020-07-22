#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01

samtools merge -f -b indv4.txt indv4.final.bam fem.final.bam
samtools merge -f -b indv5.txt indv5.final.bam fem.final.bam
samtools merge -f -b indv6.txt indv6.final.bam fem.final.bam
samtools merge -f -b indv7.txt indv7.final.bam fem.final.bam
samtools merge -f -b indv8.txt indv8.final.bam fem.final.bam
samtools merge -f -b indv9.txt indv9.final.bam fem.final.bam 
samtools merge -f -b indv10.txt indv10.final.bam fem.final.bam
samtools merge -f -b indv14.txt indv14.final.bam fem.final.bam
