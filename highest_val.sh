#!/bin/bash

# Write Script to find out biggest number from given three nos. Nos are argument. Print error if sufficient arguments are not supplied.

clear

echo " *** Selecting the highest value from given arguments. *** "

args=$#

if [ $args -ge 3 ]; then
   echo -e "\nArguments are supplied"
   if [ $1 -gt $2 ]; then
      high_val=$1
      if [ $1 -gt $3 ]; then
         high_val=$1
      else
         high_val=$3
      fi
   else
      high_val=$2
      if [ $2 -gt $3 ]; then
         high_val=$2
      else
         high_val=$3
      fi
   fi
   echo "----------------------------------"
   echo "    Highest Value is :  $high_val"
   echo "----------------------------------"
else
   echo -e "\nRequired no of arguments are not supplied. Three arguments are expected."
fi
