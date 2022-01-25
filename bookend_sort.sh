#!/bin/bash

for file in elrs/*.elr; do
name=$(basename "$file" )
bookend elr-sort -o "sorted_elrs/"$name"_sort.elr" $file
done 