#!/bin/bash

###################################################################
# Author: Nikhita A
# Date: 14-Dec-2023
# Script no: 03
# Description: This shell script deals with 'if-else' condition
# Purpose: Practice conditional statements
####################################################################

file=if-then-exit.sh

# Check if file exists 

if [[ ! -f $file ]]; then
    echo "The file $file does not exist"
    exit 1
else
    echo "The contents of the file is as follows:"
    cat $file
fi
