#!/bin/bash

#Author: Indika W Bandara
#Version: 1.0
#Date: 2026-03-24
#About: This script shows the use of String operators.

str1="Indika"
str2="Linetra Technology"

if [[ $str1 = $str2 ]]
then
    echo "$str1 is equal to $str2"
else
    echo "$str1 is not equal to $str2"
fi

if [[ $str1 != $str2 ]]
then
    echo "$str1 is not equal to $str2"
else
    echo "$str1 is equal to $str2"
fi

if [ -n $str1 ]; then
    echo "String length is not zero."
else
    echo "String length is zero."
fi

if [ -z $str1 ]; then
    echo "String length is zero."
else
    echo "String length is not zero."
fi

if [ $str1 ]; then
    echo "String length is not zero."
else
    echo "String length is zero."
fi
