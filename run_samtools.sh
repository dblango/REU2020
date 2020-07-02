#run this by typing ./run_samtools.sh in /n/holyscratch01/informatics/blangdo/hetAtr/01_fastqs

for SP in /n/holyscratch01/informatics/blangod/hetAtr/01_fastqs/*.sam;
do
sbatch het_bams.sh $SP
sleep 1 
done
