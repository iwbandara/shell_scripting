#!/bin/bash

echo ""
read -p "Enter the file name (including the path): " file_name
echo "----------------------------------"

if [ -f $file_name ]; 
then
	echo "File $file_name found. Checking for its capacity."
    echo "----------------------------------"
	if [ -s $file_name ];
	then
		echo "File $file_name is not empty."
        echo "----------------------------------"
		
        # Following two methods can be used to calculate the file size.
        # file_size=$(stat -c%s $file_name)
        file_size=$(wc -c < $file_name)

		echo "File $file_name consists of $file_size bytes."
        echo "----------------------------------"
	else
		echo "File $file_name is empty."
        echo "----------------------------------"
	fi
else
	echo "File not found. Creating the file at mentioned location"
	$(touch $file_name)
fi
