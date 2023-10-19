#!/bin/bash
if [ "$#" != 1 ]; then 
	echo "Usage of the program is ./backup.sh filename"
	exit
else
	if [ -f "$1" ]; then
		date=$(date +%d-%m-%y)
		cp "$1" "$1.bak_$date"
	else
		echo "The file does not exist: $1"
        exit
	fi
fi
