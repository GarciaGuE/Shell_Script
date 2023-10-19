#!/bin/bash
if [ $# -ne 1 ]; then
    echo "ERROR"
    echo -e "\n"
    exit 1
fi
if [ ! -d "$1" ]; then
    echo "The argument is not a directory"
    echo -e "\n"
    exit 1
fi
echo "Entered arguments: \n\t <directory name>: $1"
