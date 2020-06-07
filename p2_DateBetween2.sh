#!/bin/bash

#Initializing variable
day=0
month=0

function CheckNum
{

Number=$1
if [[ "$Number" =~ ^[0-9]+$ ]];then
  if [[ ${#Number} -lt 2 ]];then
     echo "Wrong Input... Try again"
     exit 0;
  elif [[ ${#Number} -gt 2 ]];then
     echo "Wrong Input... Try again"
     exit 0;
  fi
else
  echo "Wrong Input... Try again"
  exit 0;
fi
}


read -p "Enter month as a decimal number (01-12):" month
read -p "Enter day as a decimal number (01-12):" day

#Checking if enter number or not and 2 digit or not.
CheckNum $month
CheckNum $day

if [ $month -eq 03 ] && [ $day -ge 20 ] && [ $day -le 31 ];then
  echo "Given date $day/$month is between 20/3 and 20/6"
elif [ $month -eq 04 ] && [ $day -ge  01 ] && [ $day -le 30 ];then
  echo "Given date $day/$month is between 20/3 and 20/6"
elif [ $month -eq 05 ] && [ $day -ge  01 ] && [ $day -le 31 ];then
  echo "Given date $day/$month is between 20/3 and 20/6"
elif [ $month -eq 06 ] && [ $day -ge  01 ] && [ $day -le 20 ];then
  echo "Given date $day/$month is between 20/3 and 20/6"
else
  echo "Given date $day/$month is not come between 20/3 and 20/6"
fi
