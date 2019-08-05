#!/bin/bash

i=1
for day in mon tue wed thru fri
do
	echo "$(( i++ )) : $day"
done
