#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-12:00:00
#SBATCH -o bam_merge.%N.%j.out
#SBATCH -e bam_merge.%N.%j.err

module load samtools/1.10-fasrc01
samtools coverage indv1.final.bam > indv1.out
samtools coverage indv2.final.bam > indv2.out
samtools coverage indv3.final.bam > indv3.out
samtools coverage indv4.final.bam > indv4.out
samtools coverage indv5.final.bam > indv5.out
samtools coverage indv6.final.bam > indv6.out
samtools coverage indv7.final.bam > indv7.out
samtools coverage indv8.final.bam > indv8.out
samtools coverage indv9.final.bam > indv9.out
samtools coverage indv10.final.bam > indv10.out
samtools coverage indv11.final.bam > indv11.out
samtools coverage indv12.final.bam > indv12.out
samtools coverage indv13.final.bam > indv13.out
samtools coverage indv14.final.bam > indv14.out
