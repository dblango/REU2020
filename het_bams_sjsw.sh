#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o het_bams.%N.%j.out
#SBATCH -e het_bams.%N.%j.err

module load samtools/1.10-fasrc01

SP=$1
name=`echo $SP | sed 's/.sam\+//'`
samtools view -b -h -o $name.bam $name.sam
samtools sort -o $name.sort.bam $name.bam
samtools index $name.sort.bam
#samtools fixmate -r -m -O bam $name.sort.bam $name.fm.bam
#samtools markdup -r -s -f $name.stats.out $name.fm.bam $name.clean.bam
samtools quickcheck $name.final.bam
