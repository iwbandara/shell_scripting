#!/bin/bash

#Author: Indika W Bandara
#Date: 2022-11-01
#Version: 1.0

# Use of arrays in Shell Scripts

# Creating an Array manually
str_array=(Mon Tue Wed Thu Fri Sat Sun)

# Display all elements of the array
echo ${str_array[@]}

# Display the count of the array elements
echo ${#str_array[@]}

# Creating a new array form a command output
ls_array=($(ls)) #creates an array from the output of 'ls' command
