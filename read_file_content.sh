#!/bin/bash

# assigning the filename to a variable
#$filename='file'
echo 
read -p "Enter the file name : " filename

echo
if [ -f $filename ]
then
    # use of while loop to read the file content
    n=1
    while read line
    do
        echo "Line no. $n : $line"
        n=$((n+1))
    done < $filename
else
    echo "Unable to find the specified file."
fi

echo "============ Method II ============"
# Method II to read a file content using 'while' loop

cat $filename | while read line
do
    echo "Line no. $n : $line"
    n=$((n+1))
done 

echo "============ Method III ============"
# Method III Use of IFS to read a file content using 'while' loop

while IFS=' ' read -r line
do
    echo "Line no. $n : $line"
done < $filename
