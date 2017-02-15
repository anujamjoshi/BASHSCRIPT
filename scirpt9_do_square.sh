#!/bin/sh 
if [ $# -ne 1 ] 
then echo "usage $0 <int> " 
exit 1
fi
square=$(($1 * $1))
echo $square
