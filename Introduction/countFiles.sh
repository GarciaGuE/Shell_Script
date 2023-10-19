#!/bin/bash

# Check if the script is provided with one argument
if [ $# -ne 1 ]; then
    echo "Error"
    exit 1
fi

# Initialize counters for .c and .h files
count_c=0
count_h=0

# Count the number of .c files
for x in $(find $1 -name "*.c")
do
    let count_c=$count_c+1
done

# Count the number of .h files
for x in $(find $1 -name "*.h")
do
    let count_h=$count_h+1
done

# Display the counts of .c and .h files
echo "There are $count_c files with .c extension and $count_h files with .h extension"
echo -e "\n"

# Display the number of lines and characters in each file, sorted by the number of characters
for x in $(find $1 -name "*.c" && find $1 -name "*.h")
do 
	echo "The file $x has $(cat $x | wc -l) lines and $(cat $x | wc -m) characters"
done | sort -nr -k8
