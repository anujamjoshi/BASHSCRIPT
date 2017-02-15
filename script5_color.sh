#!/bin/sh
echo Enter a color
read color
case $color in 
 bl* | Bl*)
 echo the sky color is $color; 
  ;;
  "red" | "yellow")
  echo the sun is sometimes this color 
  ;;
  *) 
  echo $color is not part of this category 
esac
