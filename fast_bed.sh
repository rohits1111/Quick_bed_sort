#!/bin/bash

#separating eachh chromosome into a different bed file
#create a snakemake file
#create a scripts.sh file
#run the snakemake file to sort
#new sorted file is created
zcat shuf.a.bed.gz | awk '{print $0>>$1".bed"}'
zcat shuf.b.bed.gz | awk '{print $0>>$1".bed"}'

snakemake --snakefile fast_bed.smk sorted/for_f_sort.bed -j1




