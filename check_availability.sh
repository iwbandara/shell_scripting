#!/bin/bash

Author: Indika W Bandara
Purpose: Check the given name is a file or not

echo "Enter the name: "
read filename
if [ -f $filename ]; then 
  echo "There is a file with the above name."; 
else 
  echo "There is no file from the given name."; 
fi
