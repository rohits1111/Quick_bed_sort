**Instructions**
1. In the quick bed sort, we are given 2 shuf files, namely shuf.a.bed.gz and shuf.b.bed.gz.
2. Our objective is to sort both the files and present it according to the selection criteria we have provided in the standard_selection.tsv
3. Using awk we create chr"no.".bed files for both shuf.a.bed.gz and shuf.b.bed.gz
4. Now we create a sort.tsv and standard_selection.tsv file which contains the details about how the chromosome no. will be arranged and also the file path for each chr"no.".bed file
5. Now creating a snakemake file "fast_bed.smk" which contains the rules for creating the sorted file. It contains the Script part which has the rule to be implied and input and output handles the data.
6. Creating the script part "get_sort.sh" which has the rule for sorting.

**Executing**
1. now creating a sh file "fast_bed.sh" which contains all the commands which we have used till now to get the output.
2. the commands include awk command, snakemake run command.
3. execute the sh file using chmod +x fast_bed.sh
4. use sh fast_bed.sh and run the sh file to get the output
5. the output will be stored in a separate directory named sorted which contains for_f_sort.bed.

     
