#!/bin/bash

# Author: Indika W Bandara
# Version: 1.0

# This shows how to use heredocument in bash

help(){
cat << EOF
----------------------------------------
      This is the Help Menu
----------------------------------------
  Option:1 => How to use operators?
  Option:2 => How to use functions?
  Option:3 => Exit
EOF
}

# Calling the function
help
