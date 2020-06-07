#!/bin/bash
#Initialize variables
yearAns=0
isLeap="NO"

read -p "Enter year in yyyy format:" yearAns

if [[ ${#yearAns} -lt 4 ]];then
  echo "Wrong Input... Try again"
elif [[ ${#yearAns} -gt 4 ]];then
 echo "Wrong Input... Try again"
fi


if [ $((yearAns % 4)) -ne 0 ] ; then
   isLeap="NO"
elif [ $((yearAns % 400)) -eq 0 ] ; then
   isLeap="YES"
elif [ $((yearAns % 100)) -eq 0 ] ; then
   isLeap="NO"
else
   isLeap="YES"
fi
if [ "$isLeap" == "YES" ];
then
   echo "$yearAns is leap year."
else
   echo "$yearAns is not leap year."
fi
