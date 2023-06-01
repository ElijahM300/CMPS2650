#!/bin/bash
#Elijah Morris
#Lab 1-10
#9-26-21

echo "Got Mail Program to check for a mail spool file"
echo ""

if [ -f $MAIL ]; then
  echo "You have a mail spool file"
else
  echo ""
fi

echo ""
echo "End of program"
