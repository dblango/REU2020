srun --pty -p test -t 40 --mem 3000 /bin/bash

module load samtools/1.10-fasrc01
samtools merge -f -b indv1.txt indv1.final.bam
