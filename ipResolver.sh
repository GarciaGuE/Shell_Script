#!/bin/bash

# Check the number of command line arguments
# addresses.txt is the file containing the hostnames
if [ $# -ne 1 ]; then
    echo "ERROR"
    exit 1
fi

# Read the file line by line and use "getent hosts" to resolve hostnames to IP addresses
cat $1 | while read line; do
	ip=$(getent hosts $line)
	printf "%-50s%-30s\n" $ip
done | sort -t . -k1,1n -k2,2n -k3,3n -k4,4n

# Alternatively, you can use the following method for sorting the output
#cat $1 | while IFS= read -r line
#do
#    echo "$(getent hosts "$line")"
#done <<< $(cat "$1")