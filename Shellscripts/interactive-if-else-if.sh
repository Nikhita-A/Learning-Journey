#!/bin/bash

#########################################################################################
# Author: Nikhita A
# Date: 15-Dec-2023
# Script no: 06
# Description: This shell script deals with interactive script
# Purpose: Practice interactive shell scripts
#########################################################################################

# User need to pass a value for the below prompt

read -p "Do you want to continue? (y/n) " reply

if [[ ${reply,,} = 'yes' ]] || [[ ${reply^^} = 'Y' ]]; then 
    echo "Great, proceeding further"
    exit 0
else
        if [[ ${reply,,} = 'n' ]] || [[ ${reply^^} = 'NO' ]]; then 
            echo "Program exited"
            exit 0
        fi
    echo "Please pass a valid input"
    exit 1
fi

