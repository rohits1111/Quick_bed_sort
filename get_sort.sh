#!/bin/bash
# $1 : list of input files separated by space
# $2 : output file

echo $1 | tr ' ' '\n' | while read fname
do
    sort $fname
done >> $2
