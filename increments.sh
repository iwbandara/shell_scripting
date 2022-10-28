#!/bin/bash

# Use of prefix increment
a=1
((++a))

echo $a # will output value 2

# Use of postfix increment
((a++))

echo $a # will output value 3

# Use of prefix decrement
((--a))

echo $a # will output value 2

# Use of postfix decrement
((a--))

echo $a # will output value 1