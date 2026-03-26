#!/bin/bash

# for variable in value1 value2 value3
# do
#     statement(s)
# done

for val in 1 2 3 4 5
do
    echo "Number $val"
done


files="file1 file2 file3 file4 file5"

for val in $files
do
    echo "File name is $val"
done
