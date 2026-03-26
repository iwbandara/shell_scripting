#!/bin/bash

#Syntax:
#until [ condition ]
#do
#   statement(s)
#done

#Important: Here condition is checked to see whether it is FALSE. If FALSE it will executes the statement(s).
#Once the condition is TRUE, it exit the loop.

#Below code will print values from 20 until 10

value=20

until [ $value -lt 10 ]
do 
    echo "$value"
    value=`expr $value - 1`
done

echo "---- EOS ----"
