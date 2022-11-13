#!/bin/bash

#Author: Indika W Bandara
#DateCreated: 2022-11-01
#DatedLastEdited: 2022-11-13
#Version: 1.1

# Use of arrays in Shell Scripts

# Creating an Array manually
str_array=(Mon Tue Wed Thu Fri Sat Sun)

# Display all elements of the array
echo ${str_array[@]}

# Display the count of the array elements
echo ${#str_array[@]}

# Adding a new element to the end of the array from user input
read -p "Enter the next element value : " element_value
count=${#str_array[@]}
str_array[$count]=$element_value

# How to remove an element form the array
# Use of "unset" keyword
unset str_array[1] # removes the second element of the array

# Creating a new array form a command output
ls_array=($(ls)) #creates an array from the output of 'ls' command
