#!/bin/bash

#Author: Indika W Bandara
#Date: 15th October 2022
#Version: 1.0

# To check the service availability of httpd

sudo systemctl status httpd > httpd.txt

output=`cat httpd.txt | grep -o running | wc -w`

        echo -e "\033[44m=================================================\033[0m"
        echo "=                                               ="

if [[ $output == 1 ]]
then
        echo "=         The service httpd is running.         ="
else
        echo "=       The service httpd is not running.       ="
fi
        echo "=                                               ="
        echo -e "\033[44m=================================================\033[0m"