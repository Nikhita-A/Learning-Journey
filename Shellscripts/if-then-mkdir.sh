#!/bin/bash

###################################################################
# Author: Nikhita A
# Date: 14-Dec-2023
# Script no: 02
# Description: This shell script deals with 'if-then' condition
# Purpose: Practice conditional statements
####################################################################

mkdir projects
exit_code=$?

# Check whether mkdir creates a directory

if [[ $exit_code -ne 1 ]]; then
   echo "created the directory 'projects'"
   exit 0
fi

touch projects/demo.txt

