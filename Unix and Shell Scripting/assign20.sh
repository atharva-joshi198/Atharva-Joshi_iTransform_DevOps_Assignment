#!/bin/bash

ls $1 2>/dev/null
if [[ $? -eq 0 ]] ; then 
	echo "Success in changing directory!" 
else
	echo "We cannot change directories"
	exit 110	
fi
