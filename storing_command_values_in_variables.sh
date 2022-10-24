#!/bin/bash

# Storing command values into a variable

#Use of paranthesis with $ symbol
command1=$(ls)

#Use of tilde sign
command2=`ls`

echo -e "\033[31m--+--+--+--+--+--+--+--+--+--+--+--+\033[0m"
echo
echo -e "\033[44mUse of paranthesis with $ symbol. Command is => ['(ls)']\033[0m"
echo
echo -e "\033[31m--+--+--+--+--+--+--+--+--+--+--+--+\033[0m"
echo
echo $command1
echo
echo -e "\033[31m--+--+--+--+--+--+--+--+--+--+--+--+\033[0m"
echo
echo -e "\033[44mUse of tilde sign to enclose a command. Command is => ['ls']\033[0m"
echo
echo -e "\033[31m--+--+--+--+--+--+--+--+--+--+--+--+\033[0m"
echo
echo $command2
echo
echo -e "\033[31m--+--+--+--+--+--+--+--+--+--+--+--+\033[0m"