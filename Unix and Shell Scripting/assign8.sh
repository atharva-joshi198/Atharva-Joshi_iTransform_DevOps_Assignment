#!/bin/bash

read -p "Your First name :" FIRSTNAME
read -p "Your Last name :" LASTNAME
read -p "Your Age:" USERAGE

FUTURE=$((USERAGE + 10))
echo "Hello $FIRSTNAME $LASTNAME, your age after 10 years: $FUTURE"
