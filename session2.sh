#!/bin/bash


## "Heredoc (multi-line strings)"

# selinux="enforcing"
# cat <<zizu > /etc/selinux/config 
# SELINUX=$selinux
# # SELINUXTYPE= can take one of these three values:
# #     targeted - Targeted processes are protected,
# #     minimum - Modification of targeted policy. Only selected processes are protected.
# #     mls - Multi Level Security protection.
# SELINUXTYPE=targeted
# zizu



# -----------
# "\" - bacslash helps to write long commands 

# instead of this:
# cat /etc/paswwd | grep john | awk -F ":" '{print $1}' && echo "User found!"  

# we can do: 

# cat /etc/passwd \
#     | grep john \
#     | awk -F ":" '{print $1}' && \
#     echo "User found!"

# -----------

# Append Redirection

# Appends the current date and time to a file called /var/www/html/logs.txt using >> (append redirection).
# Run the script multiple times to see the log grow with each run.

# () - save variable 

result=$(date)

echo "Current date & time: $result" >> /tmp/logs.txt
