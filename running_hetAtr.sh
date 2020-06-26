for R1 in *1.fastq.gz;
do
sbatch map_samples.sh $R1 $R2
sleep 1
done

# run this by doing ./running_hetAtr in the /n/holyscratch01/informatics/blangod/hetAtr
