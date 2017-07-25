#!/bin/bash
line_count=2000
for ffile in *final.csv
do	
	filename=$(echo $ffile | cut -d'.' -f1)
	row_count=$(wc -l $ffile | sed -e 's/^[ \t]*//' | cut -d' ' -f1)
	if [ $row_count -lt 2 ]; 
	then 
	cp $ffile ${filename}_split.csv
	else
		tail -n +2 $ffile | split -l $line_count - split_
		for file in split_*
		do
			head -n 1 $ffile  > tmp_file
			cat $file >> tmp_file
			mv -f tmp_file $file
		done
	
		ls split_?? |  while read line; do mv $line ${filename}_${line}.csv; done
	fi
done
