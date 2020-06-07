#!/bin/bash

echo "PRESS \"ctrl+c\" TO EXIT."
while :
do

read -p "Enter single digit number [0-9]:" Number

if [[ "$Number" =~ ^[0-9]+$ ]];then
 echo "Entered input is number ..."
else
  echo "Entered input is not number ..."
fi

case "${Number}" in
0)
   echo "ZERO"
  ;;
1)
   echo "ONE"
  ;;
2)
   echo "TWO"
  ;;
3)
   echo "THREE"
  ;;
4)
   echo "FOUR"
  ;;
5)
   echo "FIVE"
  ;;
6)
   echo "SIX"
  ;;
7)
   echo "SEVEN"
  ;;
8)
   echo "EIGHT"
  ;;
9)
   echo "NINE"
  ;;
*)
   echo "Not a single digit ... Try again ..."
  ;;
esac

done



