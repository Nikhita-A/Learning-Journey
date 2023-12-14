#!/bin/bash

###################################################################
# Author: Nikhita A
# Date: 14-Dec-2023
# Script no: 01
# Description: This shell script deals with 'if-then' condition
# Purpose: Practice conditional statements
####################################################################

file=test.txt

if [[ -f $file ]]; then
   cat $file
   exit 0
fi

exit 1
