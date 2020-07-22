#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01

samtools merge fem.final.bam indv4.final.bam indv5.final.bam indv6.final.bam indv7.final.bam indv8.final.bam indv9.final.bam indv10.final.bam indv14.final.bam

