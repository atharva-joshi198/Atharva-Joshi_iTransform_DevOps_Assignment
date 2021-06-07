#!/bin/bash

Counter=0

while IFS='' read -r LinefromFile || [[ -n "${LinefromFile}" ]]; do

    ((Counter++))
    echo "Accessing line $Counter: ${LinefromFile}"

done < "$1"
