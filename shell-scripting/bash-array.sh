#!/bin/bash

a=( 'Hello Big data' book ! Q TRE )

# get number of elements in the array
elements=${#a[@]}
echo "$elements"
# echo each element in array
# for loop
for (( i=0;i<$elements;i++)); do
	echo ${a[${i}]}
done
