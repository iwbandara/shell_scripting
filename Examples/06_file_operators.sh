#!/bin/bash

file="/home/iwbandara/Desktop/scripts/hello1.txt"

#Checks for the READ permission for the owner of the file, not group or others.
if [ -r $file ]
then
    echo "File has READ access."
else
    echo "File does not have READ access."
fi

#Checks for the WRITE permission for the owner of the file, not group or others.
if [ -w $file ]
then
    echo "File has WRITE permission."
else
    echo "File does not have WRITE permission."
fi

#Checks for the EXECUTE permission for the owner of the file, not group or others.
if [ -x $file ]
then
    echo "File has EXECUTE permission."
else
    echo "File does not have EXECUTE permission."
fi

#Checks the file is a normal file or a special file.
if [ -f $file ]
then
    echo "The file is an ordinary file."
else
    echo "This is a special file."
fi

#Checks for a directory.
if [ -d $file ]
then
    echo "The file is a directory."
else
    echo "This is not a directory."
fi

if [ -s $file ]
then
    echo "The file is NOT ZERO."
else
    echo "The file size is ZERO."
fi

if [ -e $file ]
then
    echo "File exists."
else
    echo "The file does not exists."
fi
