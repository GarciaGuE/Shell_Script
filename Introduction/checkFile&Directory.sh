#!/bin/bash
if [ $# != 2 ]; then
    echo $0 "<file> <directory>"
else
	if [ -a $1 ]; then
        echo "$1 exists"
    else
        echo "$1 does not exist"
    fi
    if [ -f $1 ]; then
        echo "$1 is a regular file"
    else
        echo "$1 is not a regular file"
    fi
    if [ -a $2 ]; then
        echo "$2 exists"
    else
        echo "$2 does not exist"
    fi
    if [ -d $2 ]; then
        echo "$2 is a directory"
    else
        echo "$2 is not a directory"
    fi
fi
