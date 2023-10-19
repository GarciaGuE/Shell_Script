#!/bin/bash

# Display the current value of the PS1 prompt variable
echo $PS1

# Define a custom prompt string and set it using PROMPT_COMMAND
s="\h:~(hello, it is \t)&"
PROMPT_COMMAND="PS1='$s'; unset PROMPT_COMMAND" bash

# Exit the current Bash session
exit
