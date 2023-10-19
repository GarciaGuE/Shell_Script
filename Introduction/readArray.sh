#!/bin/bash
array=("one" "two" "three")
for x in ${array[*]}
do
	echo "--->$x"
done
