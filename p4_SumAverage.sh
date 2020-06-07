#!/bin/bash

count=5
echo "Please enter 5 two digit numbers"
for (( i=0;i<$count;i++ ))
do
  read -p "Enter Number [$((i+1))]:" arr[$i]
  if [[ ${#arr[$i]} -lt 2 ]] ; then
	echo "Wrong input...Number must be two digit...try again..."
        i=$(( $i-1 ))
  fi
done

echo -e "\nNumber entered by you are:"
echo ${arr[@]}

echo -e "\nSum of all 5 two digit numbers:"
for j in ${arr[@]}
do
    sumResult=$(( $sumResult + $j ))
done
echo $sumResult

echo -e "\nAverage  of all 5 two digit numbers:"
avgResult=$(( $sumResult/$count ))
echo $avgResult
