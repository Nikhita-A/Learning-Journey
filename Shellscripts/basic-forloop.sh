#!/bin/bash

#########################################################################################
# Author: Nikhita A
# Date: 15-Dec-2023
# Script no: 07
# Description: This shell script deals with 'for loop' functionality
# Purpose: Practice looping constructs
#########################################################################################

# without for loop

echo "Terraform"
echo "Ansible"
echo "Docker"
echo "Kubernetes"
echo "Jenkins"
echo "AzureDevOps"

# using for loop

for devops_tools in Terraform Ansible Docker Kubernetes Jenkins AzureDevOps ; do 
    echo $devops_tools
done 

# other variant of for loop

devops_tools=(Terraform Ansible Docker Kubernetes Jenkins AzureDevOps)

  # print the tools in increasing order
for (( index=0; index<6; index++ )) do
    echo ${devops_tools[$index]}
done

  # print the tools in decreasing order
for (( index=6; index>=0; index-- )) do
    echo ${devops_tools[$index]}
done

