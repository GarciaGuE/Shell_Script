#!/bin/bash

# Define a function to display the main menu
showInfo() {
    echo "=== Main Menu ==="
    echo "Select an option:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Option 3"
    echo "4. Submenu Option"
    echo "9. Cancel"
    echo "0. Confirm"
}

# Define a function to display the submenu
submenu() {
    echo "=== Submenu Access ==="
    echo "1. Submenu Option 1"
    echo "2. Submenu Option 2"
    echo "3. Submenu Option 3"
    
    read type
    
    case $type in
        1)
            echo "You have selected Submenu Option 1";;
        2)
            echo "You have selected Submenu Option 2";;
        3)
            echo "You have selected Submenu Option 3";;
        *)
            echo "You have selected another option";;
    esac
}
# Clear the screen
clear

# Display the main menu
showInfo

# Read user input and handle menu options
while read val; do
    clear
    case $val in
        1)
            echo "You have selected Option 1";;
        2)
            echo "You have selected Option 2";;
        3)
            echo "You have selected Option 3";;
        4)
            submenu;;
        9)
            exit;;
        0)
            echo "Confirmation"
            exit;;
    esac
    echo "================================="
	showInfo
done
