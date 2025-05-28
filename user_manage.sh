#!/bin/bash

# The script should:
# Ask the user whether they want to add or delete a user account.
# If adding a user, prompt for the username and create the account using useradd. Set a default password using passwd.
# If deleting a user, ask for the username and delete the account using userdel.
# Log all actions to a file.
# Bonus: Implement password expiration policies.

_create_user() {
    read -p "Enter new user name to create: " username
    useradd $username -p passwd
    echo "User $username created successfully - $(date)" >> /var/log/userlogs.log
}

_delete_user() {
    read -p "Enter user name to delete: " username
    userdel $username
    echo "User $username deleted successfully - $(date)" >> /var/log/userlogs.log
}

read -p "Do you want to 'create' or 'delete' user?: " input 

if [ $input = "create" ]; then 
    _create_user
elif [ $input = "delete" ]; then 
    _delete_user  
else
    echo "Invalid option, try again"
    exit 
fi 
