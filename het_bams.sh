#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-08:00:00
#SBATCH -o bwa_mem.%N.%j.out
#SBATCH -e bwa_mem.%N.%j.err

# submit this script from /n/holyscratch01/informatics/blangod/hetAtr/ by typing sbatch het_bams.sh

module load bwa/0.7.17-fasrc01

for file in *.sam;
do
samtools view -b -h -o $file.bam $file.sam
samtools sort -o $file.sorted.bam $file.bam
samtools index $file.sorted.bam
samtools fixmate -r -m -O bam $file.sorted.bam $file.fm.bam
samtools markdup -r -s -f $file.stats.out $file.fm.bam $file.final.bam
samtools quickcheck $file.final.bam
done
