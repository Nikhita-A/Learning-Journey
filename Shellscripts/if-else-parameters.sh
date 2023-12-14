#!/bin/bash

#########################################################################################
# Author: Nikhita A
# Date: 14-Dec-2023
# Script no: 04
# Description: This shell script deals with 'if-else' condition which accepts parameters
# Purpose: Practice conditional statements
#########################################################################################

file_name=$1

# When the user passes an empty file path

if [[ -z $file_name ]]; then
    echo "Incorrect usage: Please pass an argument (file path)"
    exit 1
fi

# Check whether the file exists

if [[ ! -f $file_name ]]; then
    echo "No such file called $file_name. Please check your file path and re-execute the script"
    exit 1
else
    echo "The contents of the file as follows:"
    cat $file_name
fi