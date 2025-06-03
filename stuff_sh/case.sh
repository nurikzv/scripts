#!/bin/bash

## CASE SYNTAX 

# case $variable in
#     pattern1)
#         # commands for pattern1
#         ;;
#     pattern2)
#         # commands for pattern2
#         ;;
#     *)
#         # default case
#         ;;
# esac


# read -p "Enter a day of the week (e.g., Mon, Tue, Wed): " day

# case $day in
#     "Mon" | "Monday")
#         echo "It's Monday! Let's start the week strong."
#         # commands
#         # commands
#         ;;
#     "Tue")
#         echo "It's Tuesday! Keep going!"
#         # commands
#         ;;
#     "Wed")
#         echo "It's Wednesday! Halfway through the week."
#         ;;
#     "Thu")
#         echo "It's Thursday! Almost there."
#         ;;
#     "Fri")
#         echo "It's Friday! The weekend is near."
#         ;;
#     "Sat" | "Sun") 
#         echo "It's the weekend! Time to relax."
#         ;;
#     *)
#         echo "Invalid input. Please enter a valid day like Mon, Tue, etc."
#         ;;
# esac


# read -p "What do you want know? (Date?, ./files?, .user?, exit?): " wish

# case $wish in
#     "date")
#     echo "Today's date: "
#     date
#     ;;
#     "./files")
#     echo "current dir files:"
#     ls -l 
#     ;;
#     ".user")
#     echo "current user info:"
#     id
#     ;;
#     "exit")
#     echo "ok then"
#     exit
#     ;; 
#     *)
#     echo "Invalid input"
#     ;;
# esac



cat << HEREDOC
Options:
1) Show today's date.
2) list files in the current directory.
3) Show the current user.
4)Exit.  
HEREDOC

read -p "Enter your choice: " choice
case $choice in
    1) date ;;
    2) ls ;;
    3) echo $USER ;;
    4) echo "ok then" && exit ;; 
    *) echo "Invalid input. Please enter a valid choise like 1, 2 etc."
esac
