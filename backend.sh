#!/bin/bash

USERID= $(id -u)

if [ $USERID -ne 0 ]
then
 echo "You should have root access to run this script"
 exit 1
else 
 dnf install nginix
fi 

