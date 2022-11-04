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
      echo "Addition of $NUM1 and $NUM2 is : $((NUM1+NUM2))"
      ;;
   Substraction)
      numbers
      echo "Subtraction of $NUM1 and $NUM2 is : $((NUM1-NUM2))"
      ;;
   Multiplication)
      numbers
      echo "Multiplication of $NUM1 and $NUM2 is : $((NUM1*NUM2))"
      ;;
   Division)
      numbers
      echo "Division of $NUM1 by $NUM2 is : $((NUM1/NUM2))"
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
