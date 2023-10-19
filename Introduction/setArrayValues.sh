#!/bin/bash
read -p "Enter the number of values: " numVal

for ((i=1; $i<=numVal; i=$i+1))
do
	read -p "Enter the value for list item $i: " cadVal
	arrayVal[$i]=$cadVal
done

echo "The length of the array \"${arrayVal[*]}\" is ${#arrayVal[@]}"
