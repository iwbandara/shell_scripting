#!/bin/bash

# Use of WHILE loop to display numbers from 1 to 10

valid=true
count=1

while [ $count -le 10 ]
do
	echo $count
	((count++))
done

echo
echo "--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+"
echo

# Use of BREAK command to break out of WHILE loop

count=1
while [ $count -le 10 ]
do
	echo $count
   if [ $count == 6 ]
   then
      break
   fi
	((count++))
done

# Use of 'sleep' in while loop
# this will pause the next iteration for the specified time duration in seconds

count=1
while [ $count -le 10 ]
do
	echo $count
	((count++))
	sleep 2 # pause for 2 seconds before executing the next iteration
done
