#!/bin/bash
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 8000
#SBATCH -t 0-02:30:00
#SBATCH -o slurm.%N.%j.out
#SBATCH -e slurm.%N.%j.err

module load samtools/1.10-fasrc01
samtools stats SAMEA3532871.bam
