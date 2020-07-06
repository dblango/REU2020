module load samtools/1.10-fasrc01 SP=$1
name=`echo $SP | sed 's/.sam\+//'`
samtools view -b -h -o $name.bam $name.sam
samtools sort -o $name.sort.bam $name.bam
samtools index $name.sort.bam
samtools quickcheck $name.sort.bam
