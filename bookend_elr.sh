#!/bin/bash

for file in /mnt/c/Users/hasna/Documents/MSc_project/bookend/namesorted_bams/*.bam; do
outname="$(basename $file | grep -P -o '^.?[^_]+')"
bookend elr --genome arath.fa --mismatch_rate .2 -o elrs/$outname.elr $file
done 