#!/bin/bash

for file in /mnt/c/Users/hasna/Documents/MSc_project/bookend/star_alignments/*.bam; do
outname="$(basename $file | grep -P -o '^.?[^_]+')"
samtools sort -n -o namesorted_bams/$outname.bam --threads 3 $file
done 