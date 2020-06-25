module load bwa/0.7.17-fasrc01

R1=$1
name=`echo $R1 | sed ‘s/_1.fastq.gz\+//‘`
R2=${name}_2.fastq.gz
#run mapping
bwa mem -t 8 -R ‘@RG\tID:‘$name’\tSM:‘$name’ hetAtr $R1 $R2 > $name.sam
