#!/bin/bash
#SBATCH -t 0-48:00
#SBATCH -p shared
#SBATCH --mem 9000
#SBATCH -o ggplots_%j.out
#SBATCH -e ggplots_%j.err

# submit from /n/holyscratch01/informatics/blangod/hetAtr/02_bams

module load R/4.0.2-fasrc01
export R_LIBS_USER=$HOME/apps/R_4.0.2:$R_LIBS_USER

Rscript ggplot_script.R
