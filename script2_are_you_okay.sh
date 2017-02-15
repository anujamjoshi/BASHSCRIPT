#!/bin/sh
#asks user if they are okay, if the user says y or Y then reply with "glad to hear it" 
#if n or N then print sorry 

echo "Are you OK?"
read answer
until [ $answer = "y" ] || [ $answer = "Y" ] || [ $answer = "N" ] || [ $answer = "n" ] 
do 
 echo "Please enter some other character" 
 read answer
done 
if [ $answer = "y" ] || [ $answer = "Y" ]
then 
 echo "glad to hear it" 
elif [ $answer = "N" ] || [ $answer = "n" ] 
then 
 echo "sorry you aren't feeling good" 
fi 
