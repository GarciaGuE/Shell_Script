#!/bin/bash

# Prompt the user to enter a number (1<=x<10)
echo -n "Enter a number (1<=x<10): "
read x

# Check if the number is within the specified range
if [ "$x" -ge 1 ] && [ "$x" -lt 10 ]; then
    echo "The number $x is within the range!"
else
    echo "Out of range!"
fi