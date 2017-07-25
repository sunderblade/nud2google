# nud2google
So this is a rough cludge of a few files designed to convert a old Now-Up-To-Date export to text (Tabbed separated) that has been opened by Excel and converted to a comma seperated text file (.CSV) to eventually be converted to a compatible file that can be imported into Google calendar. I have multiple calendars so I just exported ALL the calendars in one go.  This creates a mess but, it's faster to do this because I have a lot of calendars with a lot of entries. 

This was project specific, so some of the calendar values have been hard coded.  

Note: Make sure you remove/replace all commas from the tabbed separated document before you save as comma-seperated-values (.CSV).

I am currently using bash and a whisper of python 2.7 on a Mac.  Bash is kind of rough so eventually I would recode it all in python once I learn it better. I just found somethings easier to cope with in bash so I went with it.

This handles dupes by removing them until the rows are unique. Duplicates are entries that are identical in every field.

The central script file is nud2goog.sh

So I start this mess by doing this at the $ prompt...
$ ./nud2goog.sh "final_comma.csv"

and it goes through 4 scripts...

a_clean_csv.sh
This script basically chews through the file and recreates the fields, triming out extra characters and also weeds out duplicate entries.

b_split_csv.py
This basically rips through the various entries and separates them into calendar specific files.

c_correct_csv.sh
This removes the brackets from the rows, the single quotes and removes the place holders inserted for blank fields for all the calendar files.  I should have looped through them but in this case I just delineated each file.

d_splitcsv.sh
This file was somewhat unnecessary, but I created it in-case google balks out the number of rows I am importing. It turns out, Google was happy to take upwards of 2k rows with no problem, so long as there weren't duplicates. My removal of duplicates turned out to be unnecessary as google actually does only import unique rows. However, the excercise was useful, because now I know why certain rows were not being imported and I know that my data has been correctly imported.

-sstreeter 7/24/2017
