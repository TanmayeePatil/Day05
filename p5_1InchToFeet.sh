#!/bin/bash

echo "1ft = 12 in then 42 in = ? ft"

feettoinch=12
givenInch=42

res=`echo "$givenInch $feettoinch"| awk 'BEGIN {print $1/$2}'`

#$(( $givenInch / $feettoinch))o
echo $res 

