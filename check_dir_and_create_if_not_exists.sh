#!/bin/bash

#Author: Indika W Bandara
#Date: 26th of October 2022
#Version: 1.0

# Script to create a directory after checking its availability

read -p "Enter the directory location => " location

#Ask for the directory name
echo -n "Enter the directory name => "
read dir_name

#check the directory availability
if [ -d "$location/$dir_name ]
then
	echo "Directory $dir_name is already available."
else
	mkdir "$location/$dir_name"
	echo "Directory successfully created."
fi