#!/bin/bash
#Elijah Morris
#Lab 1-10
#9-26-21

echo "Bash Program for Simple Calculations"
echo ""

if [ $# -lt 3 ]; then 
  echo "Usage: $0 <operation> <integer1> <integer2>"
  exit
fi

INT1=$2
INT2=$3
ANS=0

case "$1" in
    "+")
        let ANS=$INT1+$INT2
        ;;
    "-")
        let ANS=$INT1-$INT2
        ;;
    "*")
        let ANS=$INT1*$INT2
        ;;
    "/")
        let ANS=$INT1/$INT2
        ;;
    *)
        echo "To do mutiplication, type \*"
        ;;
esac

echo "The result of your calculation is: $ANS"
