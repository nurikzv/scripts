#!/bin/bash

## WHILE LOOP

# Write a script that starts from a user-provided number and counts down to 0.
# Use a while loop to print the numbers until the countdown finishes.
# After the countdown, display "Time's up!"


## PSEUDO CODE 
# Take input from user and save that us num variable 
# intiate(start) while loop with condition if $num is greater than 0
# print out &num
# subtract 1 by $num each iteration
# end while loop 
# print out "Time is up!"


read -p "Enter your number: " num 

while [ $num -ge 0 ]; do 
    echo $num
    sleep 1
    # ((num--))
    num=$((num - 1))
done
echo "Time's up"

