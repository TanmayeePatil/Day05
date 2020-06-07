#!/bin/bash

echo "Randomly generating signle digit number. Press ctrl+c to stop."
for (( ; ; ))
do
 echo "$(( ( RANDOM % 9 )  + 1 ))"
 sleep 2
done
