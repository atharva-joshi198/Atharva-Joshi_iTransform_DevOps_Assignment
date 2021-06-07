#!/bin/bash

echo "Guess a number between 1 to 5"
ANSWER=5

if [ "$1" == "$ANSWER" ] ;then
	echo "Success!"
else
	echo " "
fi
