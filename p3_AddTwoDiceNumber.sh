#!/bin/bash

function RollDice
{
for i in `seq 1`
do
 varNumber=$(( ( RANDOM % 6 )  + 1 ))
 echo $varNumber
done
}

echo "It's your turn Bob. Rolling dice once..."
var1=$(RollDice)
echo $var1

echo -e "\nIt's your turn Sam. Rolling dice once..."
var2=$(RollDice)
echo $var2

 echo -e "\n$var1 and $var2 are two number generated..."
 sum=$(( $var1+$var2 ))
 echo "$var1+$var2=$sum"

