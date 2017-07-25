#!/usr/bin/env python
## Rooms ##
# "ASB 210" 
# "ASB 220" 
# "ASB 304" 
# "ASB 504" 
# "ASB Foyer" 
# "ASB Kitchen" 
# "SB 221" 
# "SB 222a" 
# "SB 306"
import sys,csv,string,os

open("asb_210.csv", 'w').close()
open("asb_220.csv", 'w').close()
open("asb_304.csv", 'w').close()
open("asb_504.csv", 'w').close()
open("asb_foyer.csv", 'w').close()
open("asb_kitchen.csv", 'w').close()
open("sb_221.csv", 'w').close()
open("sb_222a.csv", 'w').close()
open("sb_306.csv", 'w').close()
open("header.csv", 'w').close()

with open(sys.argv[1], 'r') as csvfile:
    readCSV = csv.reader(csvfile, delimiter=',')
    for row in readCSV:
	field=row[7]
	if field == ("ASB 210"):
		with open("asb_210.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("ASB 220"):
		with open("asb_220.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("ASB 304"):
		with open("asb_304.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("ASB 504"): 
		with open("asb_504.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("ASB Foyer"):
		with open("asb_foyer.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("ASB Kitchen"):
		with open("asb_kitchen.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("SB 221"):
		with open("sb_221.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("SB 222a"):
		with open("sb_222a.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("SB 306"):
		with open("sb_306.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	elif field == ("Location"):
		with open("header.csv", "a+") as text_file:
			text_file.write("{}\n".format(row))
	else:
		print field





  