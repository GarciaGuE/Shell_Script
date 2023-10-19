#!/bin/bash

# Define a function named "hello" that prints a greeting
hello(){
    echo "You are inside the hello() function and I'm greeting you."
}

# Display a message before calling the "hello" function
echo "The next line calls the hello() function"

# Call the "hello" function
hello

# Display a message after exiting the function
echo "Now you have exited the function"
