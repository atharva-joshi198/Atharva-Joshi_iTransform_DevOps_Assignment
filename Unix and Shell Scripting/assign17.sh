#!/bin/bash

exec 3< super.txt
do
	read <&3 var
	if [[ $? -ne 0 ]]
	then
		done=1
		continue
	fi
	echo $var
done

td=$(date)
exec 4> super.txt
echo $td >&4
