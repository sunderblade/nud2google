#!/bin/bash
printf '%s\n' "### TASK INITIATED @ $(date +%y/%m/%d\|%H:%M:%S) ###"
cat $1 | sed "s/\//-/g" | sed "s///g" | tr -cd '[[:alnum:]]._-\t\n\r :,' | sed "s/Meeting/Appointment/g" | sed "s/MO Conference/SB 222a/g" | sed "s/Room//g" | sed -e 's/^[ ]*//'  > tmp_v3.txt

# Create empty file
> tmp_v1.csv
echo "Subject,Start Date,Start Time,End Date,End Time,All Day Event,Description,Location,Private" > tmp_v1.csv

while IFS='' read -r -a line; do
IFS=","
index=0
rowArr=()

for field in $line
do
	#turn it on
	shopt -s extglob
	### Trim leading whitespaces ###
	field="${field##*( )}"
	### trim trailing whitespaces  ##
	field="${field%%*( )}"
	# turn it off
	shopt -u extglob

	if [ "$field" == "" ]; 
	then
		field=($(echo "BLANK"));
	elif [ "Banner" == "$field" ]; then
		field=($(echo "TRUE"));
	elif [ "Appointment" == "$field" ]; then
		field=($(echo "FALSE"));
	elif [ $index -eq 8 ]; then
		field=($(echo "FALSE"))
	fi
	rowArr+=($field);
	index=$(( $index+1 ))
done

echo "$(echo ${rowArr[3]} | tr -d '\r'),$(echo ${rowArr[0]} | tr -d '\r'),$(echo ${rowArr[1]} | tr -d '\r'),$(echo ${rowArr[0]} | tr -d '\r'),$(echo ${rowArr[2]} | tr -d '\r'),$(echo ${rowArr[5]} | tr -d '\r'),$(echo ${rowArr[4]} | tr -d '\r'),$(echo ${rowArr[7]} | tr -d '\r'),$(echo ${rowArr[8]} | tr -d '\r')" >> tmp_v1.csv

IFS=''
done < "tmp_v3.txt";

cat -n tmp_v1.csv | sort -k2 -k1n  | uniq -f1 | sort -nk1,1 | cut -f2- > tmp_v2.csv
if  [ "$(sort tmp_v2.csv | uniq -d)" == "" ]; then 
echo "### VERIFIED UNIQUE EVENTS @ $(date +%y/%m/%d\|%H:%M:%S) ###"
cat "tmp_v2.csv" > "clean_final.csv"
else >"clean_final.csv"
fi
rm tmp*.*
printf '%s\n' "### TASK COMPLETED @ $(date +%y/%m/%d\|%H:%M:%S) ###"
