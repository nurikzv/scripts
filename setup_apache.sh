#!/bin/bash

## STEP 1

test=$(systemctl status httpd)
if [ $? -ne 0 ]; then 
    dnf install httpd -y
fi

# -y -- in this script when terminal asks us yes or no ->
#     ->"-y" is answering yes insted of us 

## STEP 2 
systemctl start httpd 
systemctl enable httpd 

status=$(systemctl status httpd | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $status = "active" ]; then 
    echo " Apache status active - $(date)" > /var/www/html/apache_log.log
else 
    echo "Apache is InActive = $(date)" > /var/www/html/apache_error.log
fi

## STEP 3
cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <style>
    body { font-family: monospace; background: #f0f0f0; padding: 1em; }
    pre { background: white; padding: 1em; border: 1px solid #ccc; }
  </style>
</head>
<body>
  <h2>Nurik's Apache Status</h2>
  <pre>
$STATUS
  </pre>
</body>
</html>
HTML

systemctl restart httpd









# if [ $status -eq "active"]; then 
#     echo "Apache status active" 
#     echo "Apache status active" && date > apache_log.log
# else 
#     [ $status -ne 'active']; then 
#     echo "Apache failure"
#     $status | awk -F " " '{ print $2 }' && date > apache_error.log

# fi


