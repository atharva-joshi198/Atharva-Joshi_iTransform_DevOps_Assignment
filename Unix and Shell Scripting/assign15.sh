#!/bin/bash

read -p "Number of times the message is to be displayed: " number

while [ $number -gt 0 ]
do
   echo "This message is"
   number=`expr $number - 1`
done
