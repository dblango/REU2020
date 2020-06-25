for R1 in *1.fastq.gz;
do
sbatch map_samples.sh $R1 $R2
wait 1 sec
done
