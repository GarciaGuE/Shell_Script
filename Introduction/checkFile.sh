#!/bin/bash

# Define a function named "check" that checks if a file exists
function check() {
    if [ -e "$1" ]; then
        return 0  # Return 0 if the file exists
    else
        return 1  # Return 1 if the file doesn't exist
    fi
}

# Prompt the user to enter the name of the file
echo -n "Enter the file name: "
read x

# Call the "check" function to check if the file exists
if check "$x"; then
    echo "The file $x exists!"
else
    echo "The file $x does not exist!"
fi
