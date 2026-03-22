#!/bin/bash

#Version 1.0
#Title: Create the log file for current date & move/backup the old file(s).
#Date: 2026-03-22
#Author: Indika W Bandara

# Backup file path
file_path="/home/<USERNAME>/Backups/"

current_year=$(date +"%Y")
current_month=$(date +"%m")
current_day=$(date +"%d")
today="$current_year-$current_month-$current_day"

previous_day=$(( current_day - 1 ))
previous_day="$current_year-$current_month-$previous_day"

# old log file name
previous_file_name="log_$previous_day"

# new log file name
current_file_name="log_$today"

# echo $today
# echo $previous_day

if [ -f $previous_file_name ];
then
    # caluculate file size in bytes
    file_size=$(wc -c < $previous_file_name )

    if [ $file_size -ge 2500 ];
    then
        log_file_compressed="backup_log_$previous_day.tar.gz"
        $(tar -czf $log_file_compressed $previous_file_name)
        # moves the current file into specified location
        $(mv $log_file_compressed $file_path) #moves the new compressed file
        $(mv $previous_file_name $file_path) #moves the original log file

        # creates the new log file
        $(touch $current_file_name)
    else
        # moves the current file into specified location
        $(mv $previous_file_name $file_path)

        # creates the new log file
        $(touch $current_file_name)
    fi
    # display the message
    echo "File found and successfully moved. Latest log file $current_file_name is created."
else
    echo "File not found. Creating the file $current_file_name ..."
    
    # old file is not found and creating the new log file.
    $(touch $current_file_name)
fi
