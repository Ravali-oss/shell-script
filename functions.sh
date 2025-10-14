#!/bin/bash
USERID = $(id -u)
if [ $USERID -ne 0 ]
then
  echo "You need to run this script as root user"
  exit 1
fi
dnf list installed mysql

Validate (
    if [ $1 -ne 0 ]
  then
    echo " $2 failed "
    exit 1
  else
    echo "$2 is successful "
  fi
)

if [ $? -ne 0 ]
then
  echo "MySQL is not installed. Installing MySQL"
  dnf install mysql-server -y
  Validate $? "MySQL installation"
  systemctl start mysqld
  systemctl enable mysqld
else
  echo "MySQL is already installed"
fi

if [$? -ne 0 ]
then
  echo "Git is not installed. Installing GIT"
  dnf install git -y
  if [ $? -ne 0 ]
  then
    echo "GIT installation failed "
    exit 1
  else
    echo "GIT installation is successful "
  fi
  systemctl start mysqld
  systemctl enable mysqld
else
  echo "GIT is already installed"
fi


