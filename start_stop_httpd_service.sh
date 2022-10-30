#!/bin/bash

read -p "Enter start or stop to perform action on httpd service : " action

if [ "${action}" == "start" ]
then
	echo "Starting httpd...."
	sudo systemctl start httpd
	echo "Started httpd"
fi

if [ "${action}" == "stop" ]
then
	echo "Stopping httpd...."
	sudo systemctl stop httpd
	echo "Stopped httpd"
fi