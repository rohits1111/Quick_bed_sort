import sys
import pandas as pd
selection_df= pd.read_csv("/root/project/fast_bed_sort/data/standard_selection.tsv", sep = "\t", header = "infer")
sort_df= pd.read_csv("/root/project/fast_bed_sort/data/sort.tsv", sep = "\t" , header = "infer")

selection_df.index = selection_df["run"]
sort_df.index = sort_df["to_sort"]
print(selection_df)
print(sort_df)

def get_all_runs_for_a_sort(wildcards):
    all_runs = sort_df.loc[wildcards.to_sort, "runs"].split(",")
    run_path_list = []
    for r in all_runs:
        p = selection_df.loc[r, "file_path"]
        run_path_list.append(p)
    return run_path_list

rule sort_from_the_beginning:
    input:
        all_runs = lambda wildcards: get_all_runs_for_a_sort(wildcards)
    output:
        sorted_bed = "sorted/for_{to_sort}.bed"
    shell:
        "sh scripts/get_sort.sh \"{input.all_runs}\" {output.sorted_bed}"
