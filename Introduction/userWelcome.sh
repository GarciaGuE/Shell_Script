#!/bin/bash

# Prompt the user to enter their username
echo -n "Enter your username: "
read user

# Check if the entered username matches the current user's username
if [ "$user" == "$USER" ]; then
    echo "Welcome, $USER"
else
    echo "That's not true!"
fi
