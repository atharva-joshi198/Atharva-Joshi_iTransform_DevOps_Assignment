#!/usr/bin/bash

function gender(){
local arms=2
local legs=2
  if [[ $ans = Female ]];then
           Female;
   else
          Male;
    fi
   }

  function Female()
          {
          echo "Female has $arms arms ,$legs legs and no beards."
          }


  function Male()
          {
           echo "Male has $arms arms, $legs legs and beards."
          }


echo "Enter Male or Female" 
read ans
gender $ans
