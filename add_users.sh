#!/bin/bash

#Author: Indika W Bandara
#Purpose: Adding users from a text file

# In this script a list of users are provided though a text file as the first argument
# Each field is separated by a colon (:)
# Execute the script as root

while IFS=":" read username job_title;
do
  echo "Adding user $username to the system."
  useradd -c $job_title $username
done < $1
