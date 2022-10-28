#!/bin/bash

# Addition of two numbers given as command line arguments

no_args=$#

if [ $no_args -eq 2 ]
then
	a=$1
	b=$2
	result=$((a+b))
	echo "The addition of $a and $b is : $result"
fi