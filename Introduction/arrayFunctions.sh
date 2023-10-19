#!/bin/bash

# Create an array and assign values to its elements
array[0]="Great"
array[1]="Array"
array[2]="Winner"

# Display the values of individual array elements
echo "${array[0]}"
echo "${array[1]}"
echo "${array[2]}\n"

# Create a new array with the same values
array=("Great" "Array" "Winner")

# Display the values of the entire array using different formats
echo "${array[*]}"  # Display as a single string
echo "${array[@]}"   # Display as an array
