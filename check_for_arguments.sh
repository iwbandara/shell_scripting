#!/bin/bash

success(){
  echo "Susccess."
}

error(){
  echo "Error"
}

if [ "$#" -eq 0 ]; then
  error
  exit 1
elif [ "$#" -gt 1 ]; then
  echo "Invalid number of arguments supplied. Only one is accepted."
  exit 1
else
  if [ "$1" == "all" ]; then
    success
    exit
  else 
    echo "Invalid argument."
    exit 1
  fi
fi
