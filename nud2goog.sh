#!/bin/bash
#./a_clean_csv.sh "final_comma.csv"
./a_clean_csv.sh $1

./b_split_csv.py "clean_final.csv"

./c_correct_csv.sh

./d_splitcsv.sh