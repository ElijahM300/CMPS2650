#!/bin/bash

result=`pgrep bash | echo $?`

if [ $result -eq 1 ]; then
    echo "No one is logged in"
else
    echo "People are logged in"
fi

