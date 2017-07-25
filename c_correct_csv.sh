#!/bin/sh
> asb_210final.csv
> asb_220final.csv
> asb_304final.csv
> asb_504final.csv
> asb_foyerfinal.csv
> asb_kitchenfinal.csv
> sb_221final.csv 
> sb_222afinal.csv
> sb_306final.csv
> headerfinal.csv
cat header.csv | sed 's/\[//g' | sed 's/\]//g'| sed 's/BLANK//g' | sed "s/\'//g" >> headerfinal.csv

cat headerfinal.csv > asb_210final.csv
cat headerfinal.csv > asb_220final.csv
cat headerfinal.csv > asb_304final.csv
cat headerfinal.csv > asb_504final.csv
cat headerfinal.csv > asb_foyerfinal.csv
cat headerfinal.csv > asb_kitchenfinal.csv
cat headerfinal.csv > sb_221final.csv 
cat headerfinal.csv > sb_222afinal.csv
cat headerfinal.csv > sb_306final.csv

cat asb_210.csv | sed 's/\[//g' | sed 's/\]//g'| sed 's/BLANK//g' | sed "s/\'//g" >> asb_210final.csv
cat asb_220.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g' | sed "s/\'//g" >> asb_220final.csv
cat asb_304.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g' | sed "s/\'//g" >> asb_304final.csv
cat asb_504.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g' | sed "s/\'//g" >> asb_504final.csv
cat asb_foyer.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g' | sed "s/\'//g" >> asb_foyerfinal.csv
cat asb_kitchen.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g' | sed "s/\'//g" >> asb_kitchenfinal.csv
cat sb_221.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g' | sed "s/\'//g" >> sb_221final.csv 
cat sb_222a.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g'| sed "s/\'//g" >> sb_222afinal.csv
cat sb_306.csv | sed 's/\[//g' | sed 's/\]//g' | sed 's/BLANK//g'| sed "s/\'//g" >> sb_306final.csv
