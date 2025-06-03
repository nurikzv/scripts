#!/bin/bash

## EX 5

# Write a script that asks the user to enter a file name.
# Use if statements to:
# Check if the file exists.
# If it exists, check if the file is readable and writable.
# Print appropriate messages depending on whether the file exists or has the required permissions.


# Example Output:

# Enter a file name: myfile.txt
# File exists.
# File is readable.
# File is writable.


# ## PSEUDO CODE

# 1. READ -P ASK USER FOR FILE NAME & SET VARIABLE 
# 2. Inititate FOR LOOP iterating through all files in the current directory 
#     a. IF $INPUT_VAR = "FILE":
#         1. IF FILE IS READABLE && WRITABLE: 
#                 PRINT $FILE IS READABLE AND WRITABLE
#                 EXIT
#             ELSE:
#                 PRINT "FILE EXIST BUT WITHOUT PROPER PERMISSIONS"
#                 EXIT 
#             FI 
#         ELSE: 
#         PRINT "FILE DOES NOT EXIST
#        FI
#        CLEAR THE SCREEN
# END FOR LOOP


    

## Not working 
# read -p "Enter file name you looking for: " filename

# for file in /root/session2; do 
#     if [ $file = $filename ]; then
#         if [[ -w $file ]]; then
#             echo "The file $file has both readable and writable permissions" 
#         else 
#             echo "The file $filename exists, but doesn't have readable and writable permissions"
#         fi
#     fi
# done




