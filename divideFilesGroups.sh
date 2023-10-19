#!/bin/bash

# Check if the first argument is a directory and the second argument is a positive integer
if [ -d ${1} ] && [ ${2} -gt 0 ]
then
    x=0  # Initialize a counter for the number of files
    echo "Starting:"
    
    # Count the number of files in the directory
    for c in $(ls ${1}); do
        let "x = $x + 1"
    done

    if [ ${2} -gt $x ] || [ $[x%${2}] -ne 0 ]
    then
        echo "It's impossible to divide $x files into ${2} groups"
        exit    
    else
        echo "There are a total of $x files and directories to divide into ${2} groups in ${1}"
    fi
else
    echo "You must use the command like this: ./script directory int_gt0"
    exit
fi

# After the validation, create the folders to divide the files
let size=$[x/${2}]
echo "Groups should have a size of $size"

mkdir groups
for count in $(seq ${2}); do 
    mkdir "groups/group$count"
done

i=0
for x in $(ls ${1}); do
    cp "$1/$x" "groups/group$((i / size + 1))"
    let "i = $i + 1"
done