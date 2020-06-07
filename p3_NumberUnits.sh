#!/bin/bash

ones=0
tens=0
hundreds=0
thousands=0

read -p "Enter Number:" num

if [ $num -gt 1000 ];then
 if [ $num -le 9999 ] && [ $num -gt 999 ];then
   thousands=$(( $num/1000 ))
   echo "Thosands place digit: $thousands"
   hundreds=$(( $num/100%10 ))
   echo "Hundreds place digit: $hundreds"
   tens=$(( $num/10%10 ))
   echo "Tens place digit: $tens"
   ones=$(( $num%10 ))
   echo "Ones place digit: $ones"
 else
  if [ $num -gt 9999 ];then
    echo "Error! Number more then  digits."
  fi
 fi
else
 echo "Error! Number less then 4 digits."
fi
