#!/bin/bash
#Elijah Morris
#Enhanced Parser Script
#10-20-21

echo "Parser Bash Program to check if a user is logged on"
echo ""  

show_help() {
cat << EOF
   Usage: ./parser2.sh [-h] [-u <username>] [-f <filename>]

 
   The options do the following: 


   -h      Prints out this message screen
   -u      Counts how many processes <username> is running
   -f      Determines if <filename> is a directory, regular file, something else, or does not exist
   
EOF
}

file_type() {
  if [ -f "$FILE" ]; then
    echo "$FILE is a regular file"
    echo ""
  elif [ -d "$FILE" ]; then
    echo "$FILE is a directory"
    echo ""
  elif [ -b "$FILE" ]; then
    echo "$FILE exists, but is not a regular file or directory"  
    echo ""
  else
        echo "$FILE does not exist"  
    echo ""
  fi    
}

count_process() {
   RESULT=`ps aux | grep $USER | wc -l` 
   echo "$USER has $RESULT processes running"
   echo ""
}

if [ $# -lt 1 ]; then  
  show_help  
  exit 1
elif [ $# -gt 5 ]; then   
  show_help
  exit 1
fi


while [ -n "$1" ]; do
    case "$1" in
        "-h")
            show_help 
            shift
            ;;
        "-f")
            FILE=$2
            file_type
            shift 2
            ;;
        "-u")
            USER=$2
            count_process
            shift 2
            ;;       
        *)
            exit
            ;;
    esac
done

 

