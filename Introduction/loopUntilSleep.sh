#!/bin/bash
echo -n "Enter a number: "
read x
until [ "$x" -le 0 ]; do
    echo $x
    x=$(($x-1))
    sleep 1
done
echo "FINISHED"
