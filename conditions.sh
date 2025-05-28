#!/bin/bash 

##syntax:

# if [ condition ]; then 
#     command 
#     command
#     command
# fi


# -gt -- greater 


# if [ 8 -gt 7 ]; then 
#     echo "that's right!" && echo "it sure is"
# fi 

# this syntax is also works, just like " [] "
# if test 7 -gt 5; then 
#     echo ":3"
# fi



# " -z " condition:

# read -p "type something: age=$1"

# if [ $age -z $1 ]; then 
#     echo "I said type something! "
# fi



# ex:

# age=$1 

# if [ -z $1 ]; then 
#     read -p " Enter your age: " age  
# fi 

# echo $age




# read -p "Enter your age: " age

# if [ $age -ge 21 ]; then 
#     echo " u can come in"
# elif [ $age -lt 21 ]; then 
#     echo " dozrevai, persik"
# fi 



# read -p " Enter your age: " c_age  

# if [ $c_age -lt 21  ]; then 
#     echo "you are too yuong"
#     echo "come bak when u 21"
#     exit 
# fi

# echo "Welcome to out bar!"

# expl: we putted "exit" because if client's age more than 21, it will kill condition "-lt" and terminal print "Welcome to out bar!"

# =================

# "else"

# read -p " Enter your age: " age  

# if [ $age -lt 21  ]; then 
#     echo "you are too yuong"
#     echo "come bak when u 21"
#     exit
# else 
#     read -p "Enter your name: " name 
#     read -p "Enter your DOB: " dob
# fi

# echo "Welcome to out bar!"

# ======================


# "elif "
# age=$1 
# echo "TEST: ($1)"

# if [ -z $1 ]; then 
#     read -p "Enter your age: " age
# fi


# if [ $age -lt 21  ]; then 
#     echo "you are too yuong"
#     echo "come bak when u 21"
#     exit

# elif [ $age -ge 60 ]; then 
#     read -p "Enter your name: " name

# else 
#     read -p "Enter your name: " name 
#     read -p "Enter your DOB: " dob
# fi

# echo "Welcome to out bar!"