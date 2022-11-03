#!/bin/bash

read -p "Please enter the file name : " file_name

# use of more command with options to read specific lines

more $file_name # display complete file, you can move down the page using Enter key

more -4 $file_name # displays the file content upto 4th line, rest can be read using Enter key

more +4 $file_name # displays the file content from the 4th line

# Use of head command

head $file_name # display the top 10 lines of the file

head -2 $file_name # display the top 2 lines of the file.

head -20 $file_name # display the first 20 lines of the file.

