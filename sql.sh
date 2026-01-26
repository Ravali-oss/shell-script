#!/bin/bash

USERID = $(id -u) //If uid -u =0 then, it is the root user

if [ "$USERID" -ne 0 ]
then
  echo "You need to run this script as root user"
  exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ] // $? is the exit code to check whether the previous command has been successfully ran. If $? =o then , the command is success
then
  echo "MySQL is not installed. Installing MySQL"
  dnf install mysql-server -y
  if [ $? -ne 0 ]
  then
    echo "MySQL installation failed "
    exit 1
  else
    echo "MySQL installation is successful "
  fi
  systemctl start mysqld
  systemctl enable mysqld
else
  echo "MySQL is already installed"
fi

dnf list installed git
if[$? -ne 0]
then 
 echo "Git is not installed. Installing git"
 dnf install git
 if[$? -ne 0]
 then
  echo "git installation failed"
  exit 1
 else 
  echo "git installation is successful"
  fi
else
 echo " Git is already installed"
fi




