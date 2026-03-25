#!/bin/bash

# while [ condition ]
# do
#     statement_1
#     statement_2
# done

# Print values between 1 and 10 (inlcuding 10)

count=1

while [ $count -le 10 ]
do 
    echo "Count = $count"
    count=`expr $count + 1`
done
