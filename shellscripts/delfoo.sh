#!/bin/bash

#Elijah Morris
#11-15-21
#Foo delete program

find /var/foo -type f -amin +60 -exec rm -f {} \  
