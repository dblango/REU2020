#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o het_bams.%N.%j.out
#SBATCH -e het_bams.%N.%j.err

module load samtools/1.10-fasrc01

samtools merge -b indv1.txt indv1.final.bam
