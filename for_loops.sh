#!/bin/bash 

## syntax -- loop

# for item in list; do
#     # commands
# done



# for file in *.sh ; do 
#     echo "This is a script: $file"
# done


## Singel line for loop
# for item in *.sh; do  cat $item | grep '#!/bin/bash'; done  


# ForLoop with conditions
for user in $(cat users.txt); do 
    if [[ $user == *kris* ]]; then 
        echo "Kris has been found"
        echo $user
        exit
    fi  
done 