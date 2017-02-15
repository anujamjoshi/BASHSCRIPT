#!/bin/sh
if [ $# -gt 2 -o $# -lt 2 ] 
then 
echo incorrect number of arguments 
exit 0 
fi 
add(){
	add=`expr $1 + $2` 
	echo "result: $add" 
}
subtract(){
	sub=`expr $1 + $2`
	echo "result: $sub" 
}
mult(){
	mul=`expr $1 \* $2`
	echo result: $mul
}
divide(){
	div=`expr $1 / $2`
	echo result $div
}


num1=$1 
num2=$2
stop=0 
menu="add the number          (enter a or A)   subtract the number     (enter s or S) multiply the number     (enter m or M) divide the numbers      (enter d or D) Exit                    (enter e or E)"
while test $stop -eq 0
do 
echo  $menu
echo your choice 
read choice 
case $choice in
[Aa]* )
	add $num1 $num2
	echo 
	echo "do you want to use the same numbers [Y/N]" 
	read choice 
	case $choice in 
	[Nn]* )
		echo enter first number
		read num1
		echo enter second number 
		read num2
		;;
	[Yy]* )
		;;
	* )
		echo yes or no
		;;
	esac
	;;
[Ss]* )
	subtract $num1 $num2 
	echo 
	echo "do you want to use the same numbers [Y/N]" 
	read choice
	case $choice in
	[Nn]* )
		echo enter first number
		read num1
		echo enter second number 
		read num2
		;;
	[Yy]* )
		;;
	* )
	echo yes or no
	;;
	esac
	;;
[Mm]* ) 
	mult $num1 $num2
	echo 
	echo "do you want to use the same numbers [Y/N]" 
	read choice
	case $choice in
	[Nn]* )
		echo enter first number
		read num1
		echo enter second number 
		read num2
		;;
		[Yy]* )
		;;
	* )
		echo yes or no
		;;					
	esac
	;;
[Dd]* )
	divide $num1 $num2 
	echo 
	echo "do you want to use the same number [y/n]" 
	read choice 
	case $choice in 
	[Nn]* ) 
		echo enter first number 
		read num1
		echo enter second number 
		read num2 
		;;
	[Yy]* )
		;; 
	* ) 
	echo yes or no 
	;; 
	esac 
	;; 
[Ee]* ) 
	exit 0
	;;
* ) 
	echo illegal choice 
	;;
esac 
done
