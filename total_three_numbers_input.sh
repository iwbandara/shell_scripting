#!/bin/bash

n=1

while [ $n -le 3 ]
do
   read -p "Please enter the $n number : " number
   total=$(( total+number ))
   n=$(( n+1 ))
done

echo "The total of the Numbers is : $total"
