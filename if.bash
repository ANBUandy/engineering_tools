#!/bin/bash

echo hello

counter=0

while [ $counter -lt 10 ]; do

	echo counter is less than 10, it is $counter

	((counter+=1))

done

while true; do

	echo hello
	sleep 1

	if [ -a trigger.txt ]; then

		echo found trigger file, exiting
		exit
	else
		echo didn\'t find trigger file, not exiting
	fi

done
