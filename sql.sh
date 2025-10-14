#!/bin/bash
uid=$(id -u)
if [ "$uid" -ne 0 ]
then
  echo "You need to run this script as root user"
  exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
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



