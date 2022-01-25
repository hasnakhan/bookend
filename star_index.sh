#!/bin/bash

#SBATCH --time=1:00:00
#SBATCH --job-name=20220117_build_star_index
#SBATCH --output=20220117_build_star_index.txt
#SBATCH --mail-user=hasna.khan@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load NiaEnv/2018a
module load gcc/7.3.0
module load star

cd $SLURM_SUBMIT_DIR

star --runMode genomeGenerate --runThreadN 80 --genomeDir /genomedir --genomefastafiles arath.fa --sjdbGTFfile arath.gtf --sjdbOverhang 75