#!/bin/bash

read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter valye of c:" c

echo "Performing a + b * c "
res1=$(( $a+$b*$c ))
echo "a + b * c = $res1"

echo -e "\nPerforming a % b + c "
res2=$(( $a%$b+$c ))
echo "a % b + c = $res2"

echo -e "\nPerforming c + a / b"
res=`echo $a $b $c | awk -F" " '{ if (sum=$3+$1/$2) print sum}'`
res3=`echo $res | awk -F. '{print $1}'`
echo "c + a / b = $res"

echo -e "\nPerforming a * b + c"
res4=$(( $a*$b+$c ))
echo "a * b + c= $res4"

arr[0]=$res1
arr[1]=$res2
arr[2]=$res3
arr[3]=$res4

echo -e "\nElements in array:"
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
