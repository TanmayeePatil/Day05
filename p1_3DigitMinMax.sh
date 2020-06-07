#!/bin/bash

count=5

echo "Please enter 5 three digit numbers"
for (( i=0;i<$count;i++ ))
do
  read -p "Enter Number [$((i+1))]:" arr[$i]
  if [[ ${#arr[$i]} -lt 3 ]]; then
	echo "Wrong input...Number must be three digit...try again..."
        i=$(( $i-1 ))
  elif [[ ${#arr[$i]} -gt 3 ]]; then
        echo "Wrong input...Number must be three digit...try again..."
        i=$(( $i-1 ))
  fi
done

echo -e "\nNumber entered by you are:"
echo ${arr[@]}

max=${arr[0]}
min=${arr[0]}

for i in "${arr[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

echo "MAXIMUM VALUE: $max"

echo "MINIMUM VALUE: $min"
