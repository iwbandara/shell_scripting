#!/bin/bash

#Author: Indika W Bandara
#Date: 2022-11-17
#Version: 1.0

# Use of 'select' loop

select type in Cars Vans Buses Exit
do 
	case $type in
	Cars)
		echo "Cars selected."
		;;
	Vans)
		echo "Vans selected."
		;;
	Busses)
		echo "Buses selected."
		;;
	Exit)
		echo "Exiting the program..."
		exit 0
		;;
	*)
		echo "Incorrect selection."
		;;
	esac
done
