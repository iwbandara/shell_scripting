#!/bin/bash

#Author: Indika W Bandara
#Date: 25th of October 2022
#Version: 1.0

# Advanced ECHO options to use in Shell Scripting

# Moving text into a new line
echo -e "This is the first line \n This is the second line"
echo -e "\033[92m --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+"

# Moving text vertically
echo -e "This is the first line \vThis is the second line"
echo -e "\033[92m --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+"

# Use of a TAB space
echo -e "This is the first line \tThis is the second line"
echo -e "\033[92m --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+"

# Use of escape
echo -e "This is the first line \\\tThis is the second line"
echo -e "\033[92m --+--+--+--+--+--+--+--+--+--+--+--+--+--+--+"