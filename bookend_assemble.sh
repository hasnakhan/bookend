#!/bin/bash

bookend assemble -o bookend.gtf --allow_incomplete --max_gap 50 --min_cov 2 --min_len 60 --min_proportion 0.1 --min_overhang 3 --cap_bonus 5 --cap_filter 0 --min_start 0 --min_end 0 sorted_elrs/*.elr