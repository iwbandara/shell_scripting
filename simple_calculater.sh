#!/bin/bash

function numbers(){
   echo -n "Enter the first number : "
   read NUM1
   echo -n "Enter the second number : "
   read NUM2
}

select option in Addition Subtraction Multiplication Division Exit
do
   case "$option" in
   Addition)
      numbers
      result=$((NUM1+NUM2))
      echo "Addition of $NUM1 and $NUM2 is : $result"
      ;;
   Substraction)
      numbers
      result=$((NUM1-NUM2))
      echo "Subtraction of $NUM1 and $NUM2 is : $result"
      ;;
   Multiplication)
      numbers
      result=$((NUM1*NUM2))
      echo "Multiplication of $NUM1 and $NUM2 is : $result"
      ;;
   Division)
      numbers
      result=$((NUM1/NUM2))
      echo "Division of $NUM1 by $NUM2 is : $result"
      ;;
   Exit)
      echo "Exiting the program..."
      exit
      ;;
   *)
      echo "Not the expected number."
      ;;
   esac
done
