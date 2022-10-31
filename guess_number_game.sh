#!/bin/bash

# Guess number game

sytem_number=$RANDOM
no_of_chances=1

for (( ;; ))
do
	read -p "This is your chance no $no_of_chances. Guess my number : " user_number
	if [ $user_number -eq $system_number ]
	then
		echo "Your guess is correct."
		echo "You guesses this with $no_of_chances may chances."
		break
	else
		echo "Your guess is not correct."
		if [ $user_number -ge $system_number ]
		then
			echo " Please select some lesser value."
		else
			echo " Please select some higher value."
		fi
	fi
	no_of_chances=$((no_of_chances+1))
done