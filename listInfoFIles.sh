#!/bin/bash

# Check the number of command line arguments
if [ $# -eq 0 ] || [ $# -ge 3 ]; then
    echo "ERROR"
    exit 1
else
	if [ $# -eq 1 ]; then
        sz=0
    else
        sz=$2
    fi
	
	intro=0

    for x in $(find $1 -size "$sz"c -or -size +"$sz"c); do
        if [ "$intro" -eq 0 ]; then
            echo "Name; UserLength; ModificationDate; AccessDate; Size; Blocks; Permissions; Executable"
            intro=1
        fi
		
		if [ -x $x ]; then
            ex=1
        else
            ex=0
        fi
		name=$(basename $x)
		let userLength=$(stat -c "%U" $x | wc -m)-1
		modificationDate=$(stat -c "%y" $x)
		accessDate=$(stat -c "%x" $x)
		size=$(stat -c "%s" $x)
		blocks=$(stat -c "%b" $x)
		permissions=$(stat -c "%A" $x)
		echo "$name; $userLength; $modificationDate; $accessDate; $size; $blocks; $permissions; $executable"
	done | sort -n -k5 -t ";" | tee output.txt
fi
	
