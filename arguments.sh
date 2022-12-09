#!/bin/bash

# Author: Indika W Bandara
# Version: 1.0
# Date: 2022-12-09

# Working with arguments is shell scripts

# getting the total of arguments
no_arguments=$#

if [ $no_arguments == 0 ]
then
   echo "There are no arguments."
else
   echo "Total number of arguments are : $no_arguments"
   echo -e "\n============================================\n"
   if [ $no_arguments == 1 ]
   then
      echo "The first argument value is : $1"
   elif [ $no_arguments == 2 ]
   then
      echo "The first argument value is : $1"
      echo "The second argument value is : $2"
   else
      echo "There are more than two arguments entered."
   fi
   echo -e "\nAll of the arguments are : $*"
fi
