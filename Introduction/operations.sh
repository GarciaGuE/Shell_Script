#!/bin/bash

# Prompt the user to enter the first number
echo -n "Enter the first number: "
read x

# Prompt the user to enter the second number
echo -n "Enter the second number: "
read y

# Calculate the sum
let addition=x+y

# Calculate the difference
let resta=x-y

# Calculate the multiplication
let multiplicacion=x*y

# Calculate the division
let division=x/y

# Calculate the remainder (module)
let module=x%y

# Display the results
echo "Sum=$addition"
echo "Difference=$resta"
echo "Multiplication=$multiplicacion"
echo "Division=$division"
echo "Module=$module"
