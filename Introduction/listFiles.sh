#!/bin/bash

# List all files in the current directory
# including inode number information
for x in *
do
    ls -i "$x"
done

# List all files in the /bin directory
for x in /bin/*
do
    ls -i "$x"
done
