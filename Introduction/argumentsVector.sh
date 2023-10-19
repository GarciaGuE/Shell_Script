#!/bin/bash

# Display the number of arguments
echo "Number of arguments: $#"

# Display the 0th argument (script name)
echo "0th argument: $0"

# Display the 1st argument
echo "1st argument: $1"

# Display the 2nd argument
echo "2nd argument: $2"

# Display all arguments as a single string
echo "All arguments: $*"

# Display all arguments as an array
echo "Arguments as an array: $@"
