#!/bin/bash 

#Elijah Morris
#11-15-21
#Check if foo is online

result='./a.out /usr/local/bin/bar'

if [ $result -eq '0' ]; then
  echo 'Daemon is up and running'
elif [ $result -eq '1' ]; then
  systemctl restart foo 
fi 
