#!/bin/bash

# Increment of variable values

i=1

# Method : 1
((i=i+1))

# Method : 2
i=$((i+1))

# Method : 3
let "i=i+1"

# Use of while loop to display numbers from 1 to 5
a=1

while [ $a -le 5 ]
do
	echo "a value is : $a"
	((a=a+1)) // or a=$((a+1)) or let "a=a+1"
done
