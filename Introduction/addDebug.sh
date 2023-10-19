#!/bin/bash -x 
# -x -v
echo -n "Enter a number: "
read x
let sum=0
for ((i=1; $i<$x; i=$i+1));
do
    let "sum=$sum+$i"
done
echo "The sum of the first $x numbers is: $sum"