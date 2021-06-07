#!/user/bin/bash
echo "Enter first name"
read first_name

echo "Enter you age:"
read age

function  info(){
  echo "User first name is $first_name"
  echo "User age is $age"
  local leap_yr=$(($age/4))
  local result=$((($leap_yr * 366) + (($age - $leap_yr) * 365)))
   echo "Age in no.of days: $result"
  }
 info first_name age
