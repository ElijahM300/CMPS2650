#!/bin/bash
#Elijah Morris
#Postfix Calculator 
#10-20-21

echo "Bash Program for Simple Calculations"
echo ""

help() {
    echo "Usage: ./postcalc.sh <number> <number> <operator>"
    echo ""
    echo ""
    echo "Operator can be one of + (addition), - (subtraction), \* (multiplication), or / (division)"    
    echo ""
    echo ""
    echo "Examples: "
    echo "      ./postcalc.sh 3 5 +"
    echo "      ./postcalc.sh 10 6 -"
    echo "      ./postcalc.sh 2 24 \*"
    echo "      ./postcalc.sh 15 3 /"
    echo ""
}

if [ $# -eq 0 ] || [ $# -lt 3 ] || [ $# -gt 3 ]; then
    help
    exit 1
fi

INT1=$1
INT2=$2
OP=$3
ANS=0

case "$3" in
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
        help
        exit 1
        ;;
esac

echo "$INT1 $INT2 $OP is equal to: $ANS"
