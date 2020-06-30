# run this by typing ./running_hetAtr.sh in /n/holyscratch01/informatics/blangod/hetAtr

for R1 in 01_fastqs/*1.fastq.gz;
do
sbatch map_samples.sh $R1 $R2
sleep 1
done
