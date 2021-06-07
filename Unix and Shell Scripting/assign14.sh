#!/bin/sh

printf "Choose an option from :\n1.option1\n2.option2\n3.option3\n"

read -p "Your choice:" OPT

case "$OPT" in
   "1") echo "You chose option 1" 
   ;;
   "2") echo "You chose option 2" 
   ;;
   "3") echo "You chose option 3" 
   ;;
   *) echo "Not a valid option" 
esac
