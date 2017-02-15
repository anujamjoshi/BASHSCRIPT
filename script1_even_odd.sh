#!/bin/sh
#the script gets the user's input and prints if the input is even or odd 
echo -n "enter number: "
read n
remainder=$(expr $n % 2)
if [ $remainder -eq 0 ]
then 
  echo "$n is even number" 
else
  echo "$n is odd number" 
fi 
