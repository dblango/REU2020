#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01

samtools merge male.final.bam indv1.final.bam indv2.final.bam indv3.final.bam indv11.final.bam indv12.final.bam indv13.final.bam

