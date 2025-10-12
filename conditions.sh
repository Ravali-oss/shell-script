#!/bin/bash/
NUM1=$1
if [ $NUM1 -gt 100 ]
then
  echo "$NUM1 is grater than 100"
else
  echo "$NUM1 is less than or equals to 100"
fi