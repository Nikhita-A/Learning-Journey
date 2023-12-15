#!/bin/bash

########################################################################################################
# Author: Nikhita A
# Date: 15-Dec-2023
# Script no: 08
# Description: This shell script deals with 'for loop' functionality using Internal Field Separator(IFS)
# Purpose: Practice looping constructs
########################################################################################################

text_file="demo.txt"
IFS=$'\n'

# contents of demo.txt
# ----------------------------------
# Pod is a collection of containers. 
# It is the smallest unit in k8s
# Pods have a few special properties
# ----------------------------------

for content in $(cat $text_file)
do
    echo "$content"
done 

