#!/bin/bash

echo "PRESS \"ctrl+c\" TO EXIT."
while :
do
   echo ""
   read -p "Enter single digit number [0-7]:" Number

 if [[ "$Number" =~ ^[0-9]+$ ]];then
     echo "Entered input is number ..."
   if [ $Number -le 7 ] && [ $Number -ge 0 ];then
     if [ $Number == 0 ];then
        echo "Sunday"
     elif [ $Number == 2 ];then
        echo "Monday"
     elif [ $Number == 3 ];then
        echo "Tuesday"
     elif [ $Number == 4 ];then
        echo "Wednesday"
     elif [ $Number == 5 ];then
        echo "Thursday"
     elif [ $Number == 6 ];then
        echo "Friday"
     elif [ $Number == 7 ];then
        echo "Saturday"
     else
        echo "Not a single digit... Try again ..."
     fi
   else
      echo "Out of range ... Number must be 0 to 7"
   fi
 else
   echo "Entered input is not number ...Try again"
 fi
done



