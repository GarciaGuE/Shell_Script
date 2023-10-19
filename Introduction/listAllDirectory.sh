#!/bin/bash

# List all files and directories in the provided directory and sort them
find "$1" | while read line; do
    name=$(basename "$line")
    echo "$name"
done | sort

# Find and display information about files with a .sh extension in the provided directory
for f in $(find "$1" -name "*sh")
do
    echo "The file is $f"
    echo "Basename is $(basename "$f")"
    echo "Dirname is $(dirname "$f")"
    echo "-------------------------------------------"
done

