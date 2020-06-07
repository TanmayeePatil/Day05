#!/bin/bash

while :
do
   read -p "Wanna flip the coin:[Y/N]:" ans
   case "${ans}" in
            Y) myRan=$(( ( RANDOM % 2 ) + 1 ))

               if [ $myRan -eq 1 ];then
                     echo "HEADS"
               else
                     echo "TAILS"
               fi
               ;;
            N) exit 0;
              ;;
            *) echo "Worng input"
   esac
done
