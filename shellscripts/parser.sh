#!/bin/bash
#Elijah Morris
#Lab 1-11
#9-28-21

username="$1"
FILE="$3"

echo "Parser Bash Program to check if a user is logged on"
echo ""  

if [ $# -lt 1 ]; then  
  echo "USAGE:parser -h"
  echo "      parser [-f filename] [-h] username"
  exit
elif [ $# -gt 3 ]; then   
  echo "USAGE:parser -h"
  echo "      parser [-f filename] [-h] username"
  exit
fi


case "$1" in
    "-h")
        username="$2"
        if [ -z "$username" ]; then
          echo "Username is required"
          exit
        elif [ -n "$username" ]; then
          COUNT=`who | grep $2 | wc -l`  
          echo "USAGE:parser -h"
          echo "      parser [-f filename] [-h] username"    
        fi  
        ;;
    "-f")
        FILE="$2"
        username="$3"
        if [ -e "$FILE" ] && [ -n "$username" ]; then
          COUNT=`who | grep $3 | wc -l`  
          FILELINES=`wc -l $2` 
          echo "$FILELINES"
        else
          echo "File does not exist or username needs to be entered"
          exit
        fi
        ;;
    "$username")
        ;;       
    *)
       echo "Please enter a valid option"
       exit
       ;;
esac

case "$2" in
    "-h")
        if [ -n "$username" ]; then   
          COUNT=`who | grep $1 | wc -l`  
          echo "USAGE:parser -h"
          echo "      parser [-f filename] [-h] username" 
        else
          echo "Username is required"  
          exit
        fi     
        ;;    
    "-f")
        if [ -e "$3" ] && [ -n "$username" ]; then
          COUNT=`who | grep $1 | wc -l`  
          FILE=`wc -l $3`
          echo "$FILE"  
        else
          echo "File does not exist or username is required"
          exit    
        fi   
        ;;
    "$FILE")
        ;;
    "$username")
        ;;
    *)
        echo "Please enter a valid option"
        exit
        ;;
esac

if [ $# -eq 1 ] && [ "$1" = $username ]; then
  COUNT=`who | grep $1 | wc -l`   
fi

if [ $COUNT -gt 0 ]; then
  echo "User is online"
elif [ $COUNT -eq 0 ]; then 
  echo "User is not online"
fi  

