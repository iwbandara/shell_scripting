#!/bin/bash

# A small shell script to help System Administrators to perform few of their day to day tasks.

clear

echo 
echo -e "\t+---+---+---+---+---+---+---+---+---+---+---+---+"
echo -e "\n\t\t\033[1;33;44m System Administration Tasks\n\n\t\t\tMenu List\033[0m\n"
echo -e "\t+---+---+---+---+---+---+---+---+---+---+---+---+\n"

current_date_time=$(date +"%Y-%m-%d %H:%M")

echo -e "\n\t\tCurrent Date & Time\t$current_date_time"
echo -e "\n\t+---+---+---+---+---+---+---+---+---+---+---+---+\n"

user_id=$UID

if [ $user_id -ne 0 ];then
   echo -e "\n\t\tYou are logged in as a \033[1;33mSTANDARD USER\033[0m\n"
   echo -e "\n\t\tYou will not be able to perform certain tasks.\n"
else
   echo -e "\n\t\tYou are logged in as the \033[1;33mROOT USER\033[0m\n"   
fi

echo -e "\n\t======================================================\n"

select option in Username Hostname DiskUsage Current\Working\Directory Memory\Information Create\Directory CreateUser ListContent Exit
do 
   case $option in
      Username)
         username=$USER
         echo -e "\n===============================================\n"
         echo -e "\tYour username is => $username."
         #echo "Username selected."
         echo -e "\n===============================================\n"
         ;;
      Hostname)
         hostname=$HOSTNAME
         echo -e "\n===============================================\n"
         echo "Computer name is => $hostname."
         #echo "Username selected."
         echo -e "\n===============================================\n"
         ;;
      DiskUsage)
         disk_usage=$(df -h)
         echo -e "\n===============================================\n"
         echo $disk_usage
         echo -e "\n===============================================\n"
         ;;
      Current\Working\Directory)
         current_working_directory=$(pwd)
         echo -e "\n==============================================="
         echo -e "\n\tYour current working directory is => $current_working_directory\n"
         echo -e "\n===============================================\n"
         ;;
      Memory\Information)
         echo -e "\n===============================================\n"
         echo "Memory Information : "
         free -h
         echo -e "\n===============================================\n"
         ;;
      Create\Directory)
         echo -e "\n===============================================\n"
         echo "Do you want to create a DIRECTORY ? [Y]es or [N]o"
         read answer
         if [ ${answer} == "Y" ];then
            echo -e "\n\tEnter the Directory name\n"
            read dir_name
            if [ $user_id -eq 0 ];then            
               mkdir $dir_name
            else
               sudo mkdir $dir_name
            fi
         else
            echo -e "\n\tExiting the Directory create.\n"
         fi
         echo -e "\n===============================================\n"
         ;;
      CreateUser)
         echo -e "\n\t===============================================\n"
         echo -e "\n\t\tHow many users to be ADDED ?\n"
         read no_of_users
         if [ $no_of_users -gt 1 ]; then
            echo -e "\n\nPlease add the usernames into a Text file. Type the filename below.\n"
            read file_name
            if [ -f $file_name ];then
               #exec $file_name
               while read line
               do
                  #echo -e "$line\n"
                  sudo useradd $line
                  sudo passwd $line
                  
               done < $file_name
            else
               echo -e "\n\tUnable to find the specified file named $file_name\n"
            fi
         else
            echo -e "\n\t\tEnter the username to be added => \n"
            read username
            result=$(grep $username /etc/passwd | wc -l)
            if [ $result -eq 1 ];then
               echo -e "\t\033[1;44mUser $username already in the system.\033[0m\n"
            else
               sudo useradd $username
               sudo passwd $username
               echo -e "\n\tUser $username successfully added.\n"
            fi
         fi         
         echo -e "\n\t===============================================\n"  
         ;;    
      ListContent)
         echo -e "\n\t===============================================\n"
         echo -e "\n\t\t\033[1;42mContent of $(pwd)\033[0m\n"
         ls -C
         echo -e "\n\t===============================================\n"
         ;;      
      Exit)
         echo -e "\n\t+---+---+---+---+---+---+---+---+---+"
         echo -e "\n\t\t\033[45mExiting the program...\n\t\tThank you for using.\033[0m\n"
         echo -e "\t+---+---+---+---+---+---+---+---+---+"         
         sleep 3         
         exit 0
         ;;
      *)
         echo -e "\n\tWrong selection.\n"
         ;;
   esac
done 
