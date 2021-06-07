#!/bin/bash
read -p "Enter a number from 1 and 3 :" num

if [[ $num -eq 1 || $num -eq 3 ]] ; then
	echo "Successfully followed instructions"
else
	echo "Failed to follow instructions"
fi
