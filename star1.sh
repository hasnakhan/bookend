#!/bin/bash

#SBATCH --time=12:00:00
#SBATCH --job-name=20220117_star1
#SBATCH --output=20220117_star1.txt
#SBATCH --mail-user=hasna.khan@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load NiaEnv/2018a
module load gcc/7.3.0
module load star

cd $SLURM_SUBMIT_DIR

for file in /scratch/n/nprovart/khanha55/rawseqdata/*.fastq; do
name=$(basename "$file" )
#mkdir $name this wasn't needed since all the files go into the working directory
STAR --runMode alignReads --runThreadN 80 --genomeDir genomedir --readFilesIn $file --alignEndsType EndToEnd --outFilterMatchNmin 20 --outFilterMismatchNmax 6 --outFilterMismatchNoverLmax .05 --outFilterIntronMotifs RemoveNoncanonicalUnannotated --alignSJoverhangMin 20 --alignSJDBoverhangMin 1 --outFilterMultimapNmax 2 --outSJfilterOverhangMin -1 15 20 20 --outSJfilterCountUniqueMin -1 2 3 3 --outSJfilterCountTotalMin -1 2 3 3 --alignIntronMax 2000 --alignMatesGapMax 5100 --outFileNamePrefix $name
done 