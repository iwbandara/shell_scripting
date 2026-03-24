#!/bin/bash

echo $USER

echo $PWD

#export keyword is used to make a variable into an environmental variable
export message="Welcome to BASH Scripting."

echo "$message"

echo "Call the child script...."
./child_script.sh


child_script.sh

#!/bin/bash

echo $message
