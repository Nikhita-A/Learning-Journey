#!/bin/bash

#########################################################################################
# Author: Nikhita A
# Date: 15-Dec-2023
# Script no: 05
# Description: This shell script deals with 'if-else' condition which accepts arguments
# Purpose: Practice conditional statements
# Usage: ./if-else-arguments.sh <directory-name> <file-name> <contents-of-file>
#########################################################################################

# Verify the number of arguments passed is 3

if [[ $# -ne 3 ]]; then
    echo "Incorrect number of arguments passed: correct usage is './if-else-arguments.sh <directory-name> <file-name> <contents-of-file>'"
    exit 1
fi

# Parameterizing the arguments

directory_name=$1
file_name=$2
contents_of_file=$3

# Verify if directory exixts. If not create directory

if [[ ! -d $directory_name ]]; then
    mkdir $directory_name || { echo "Cannot create directory. The directory with the name '$directory_name' already exists."; exit 1; }
fi

# Create file path

file_path=$directory_name/$file_name

# Verify if file exists. If not create file

if [[ ! -f $file_name ]]; then
    touch $file_path || { echo "Cannot create file. The file with the name '$file_name' already exists."; exit 1; }
fi

# Append content to the file

echo $contents_of_file > $file_path



