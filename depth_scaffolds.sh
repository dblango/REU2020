#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-72:00:00
#SBATCH -o scaffolds_depth.%N.%j.out
#SBATCH -e scaffolds_depth.%N.%j.err

module load samtools/1.10-fasrc01

samtools depth -b scaffolds.bed -o i1.txt indv1.final.bam
samtools depth -b scaffolds.bed -o i2.txt indv2.final.bam
samtools depth -b scaffolds.bed -o i3.txt indv3.final.bam
samtools depth -b scaffolds.bed -o i4.txt indv4.final.bam
samtools depth -b scaffolds.bed -o i5.txt indv5.final.bam
samtools depth -b scaffolds.bed -o i6.txt indv6.final.bam
samtools depth -b scaffolds.bed -o i7.txt indv7.final.bam
samtools depth -b scaffolds.bed -o i8.txt indv8.final.bam
samtools depth -b scaffolds.bed -o i9.txt indv9.final.bam
samtools depth -b scaffolds.bed -o i10.txt indv10.final.bam
samtools depth -b scaffolds.bed -o i11.txt indv11.final.bam
samtools depth -b scaffolds.bed -o i12.txt indv12.final.bam
samtools depth -b scaffolds.bed -o i13.txt indv13.final.bam
samtools depth -b scaffolds.bed -o i14.txt indv14.final.bam
