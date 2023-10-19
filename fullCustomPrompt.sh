#!/bin/bash

prt=""

# Function to display the main menu
menu() {
    echo "=== Prompt Customization ==="
    echo "Select an option to add to the prompt:"
    echo "1. User Name"
    echo "2. Host Name"
    echo "3. Full Path"
    echo "4. Last Part of Path"
    echo "5. Time"
    echo "6. Date"
    echo "7. Literal String"
    echo "8. Add Color and Style"
    echo "9. Cancel"
    echo "0. Confirm"
}

# Function to configure text color and style
submenu() {
    echo "=== Configure Color and Style ==="
    echo "- Font Style -"
    echo "1. Normal"
    echo "2. Bold"
    echo "3. Underline"
    read type

    case $type in
		1)
			echo "";;
		2)
			prt="$(tput bold)$prt";;
			#"\e[1mbold\e[0m"
		3)
			prt="$(tput smul)$prt";;
			#"\e[4munderline\e[0m"	
	esac
	
	echo "- Font Color -"
    echo "1. Black"
    echo "2. Red"
    echo "3. Green"
    echo "4. Yellow"
    echo "5. Blue"
    echo "6. White"
    read color
	case $color in
		1)
			prt="$(tput setaf 0)$prt";;
			#echo -e "\e[1;30m This is black text \e[0m"
		2)
			prt="$(tput setaf 1)$prt";;
		3)
			prt="$(tput setaf 2)$prt";;
		4)
			prt="$(tput setaf 3)$prt";;
		5)
			prt="$(tput setaf 4)$prt";;
		6)
			prt="$(tput setaf 7)$prt";;
	esac

	echo "- Background Color -"
    echo "1. Black"
    echo "2. Red"
    echo "3. Green"
    echo "4. Yellow"
    echo "5. Blue"
    echo "6. White"
    read bckg
	case $bckg in
		1)
			prt="$(tput setab 0)$prt";;
		2)
			prt="$(tput setab 1)$prt";;
		3)
			prt="$(tput setab 2)$prt";;
		4)
			prt="$(tput setab 3)$prt";;
		5)
			prt="$(tput setab 4)$prt";;
		6)
			prt="$(tput setab 7)$prt";;
	esac
}

# Display the main menu
menu
while read val; do
	clear
	case $val in
		1)
			prt="$prt\u";;
		2)
			prt="$prt\h";;
		3)
			prt="$prt\w";;
		4)
			prt="$prt\W";;
		5)
			prt="$prt\t";;
		6)
			prt="$prt\d";;
		7)
			read cadena
			prt="$prt$cadena";;
		8)
			submenu;;
		9)
			exit;;
		0)
			PROMPT_COMMAND="PS1='$prt';unset PROMPT_COMMAND" bash
			exit;;
	esac
	echo "CURRENT PROMPT: $prt"
	menu
done
