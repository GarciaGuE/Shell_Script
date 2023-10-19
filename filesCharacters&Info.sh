#!/bin/bash

# Check the number of command line arguments
if [ $# -ne 1 ]; then
    echo "ERROR"
    exit 1
fi

# Display the length of the filenames in the directory
for x in $(find $1 -name "*"); do
    name=$(basename $x)
    len=$(echo -n $name | wc -c)
    if [ $len -eq 1 ]; then
        echo "$name <- $len character"
    else
        echo "$name <- $len characters"
    fi
done

echo "........."

# Display information about filenames with odd lengths
for x in $(find $1 -name "*")
do
	name=$(basename $x)
	len=$(echo -n $name | wc -c)
	let parity=$len%2
	if [ $parity -eq 1 ];
	then
		kilobytes=$(stat -c "%s" $x)
		let kb=$kilobytes/1024
		echo "$name, $(find $PWD -name "$1"), i-node $(stat -c "%i" $x), $(stat -c "%s" $x) bytes ($kb kB), permissions: $(stat -c "%a" $x) ($(stat -c "%U" $x ) : $(stat -c "%G" $x ))"
	fi
done 

