#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-12:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01

samtools coverage fem.final.bam > fem_bam.out
