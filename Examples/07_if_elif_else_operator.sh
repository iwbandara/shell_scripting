#!/bin/bash

var1=30
var2=30

if [[ $var1 -gt $var2 ]]
then
    echo "$var1 is greater than $var2."
elif [[ $var1 -lt $var2 ]]
then
    echo "$var1 is less than $var2."
else
    echo "$var1 is equal $var2."
fi
