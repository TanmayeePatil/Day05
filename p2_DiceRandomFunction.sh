#!/bin/bash

echo "It's your turn. Rolling dice once..."
for i in `seq 1`
do
 echo "$(( ( RANDOM % 6 )  + 1 ))"
done
