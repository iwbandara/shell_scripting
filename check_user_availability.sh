#!/bin/bash

#Author: Indika W Bandara
#Version: 1.0
#Date: 2022-11-11

read -ep "\nEnter the new username : " username

user_info=`cat /etc/passwd | grep $username | cut -d: -f1`

echo "++++++++++++++++++++++++++++++++"

if [[ "$user_info" == "$username" ]]
then
    echo "This user is already in the system."
else
    echo "This user is not in the system."
fi

echo "++++++++++++++++++++++++++++++++"