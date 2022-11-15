#!/bin/bash

#Author: Indika W Bandara
#Date: 2022-11-15
#Version: 1.0

# Ask user to enter the file name as a user input
read -p "Please enter the file name : " filename

# Method I
while read line
do
  echo $line
done < $filename

# Method II
cat $filename | while read line
do
  echo $line
done
