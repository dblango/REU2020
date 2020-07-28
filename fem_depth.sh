#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-72:00:00
#SBATCH -o autosomes_cov.%N.%j.out
#SBATCH -e autosomes_cov.%N.%j.err

module load samtools/1.10-fasrc01

samtools depth -b autosomes_cov.bed -o fem_depth.txt fem.final.bam
