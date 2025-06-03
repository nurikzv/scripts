#!/bin/bash

# Write a script that copies all .sh files in a directory by appending "_backup" to their names.
# and move them into /tmp folder 
# Use a for loop to go through each .sh file and copy and move them.

# cur_dir="/root/session2"
# tmp="/tmp"

# for file in "$cur_dir"/*; do
#     if [[ -f "$file" && "${file##*.}" == "sh" ]]; then
#     cp | mv "$file" "$tmp"
#     echo "$file moved"
#     ls /tmp
#     fi
# done


## I messed up and moved all .sh files to /tmp, so I made this script which copied all .sh files in /tmp to /root/session2/

# for file in "$tmp"/*; do
#   if [[ -f "$file" && "${file##*.}" == "sh" ]]; then
#     cp "$file" "$cur_dir"
#     echo "Copied: $file"
#   fi
# done


## this script deleted all .sh files in /tmp
# for file in "$tmp"/*; do
#   if [[ -f "$file" && "${file##*.}" == "sh" ]]; then
#     rm -r "$file" 
#     fi 
# done



## PSEUDO CODE 

# for file in *.sh do 
#     copy file source destination_backup
# done


# for file in *.sh; do 
#     echo " Targeteed script: $file"
#     cp $file /tmp/$file-backups
#     sleep 1
# done 




