#!/bin/bash

read -p "Enter rectangle lenght in feet:" l
read -p "Enter rectange breadth in feet:" b

area=$(( $l*$b ))

echo "Converting result into meters..."
mult="0.3048"
meter=$(( $area*3048/10000 ))
echo $meter

