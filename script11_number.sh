factorial(){
 if [ "$1" -gt "1" ]; then
 i=`expr $1 - 1`
 j=`factorial $i`
 k=`expr $1 \* $j`
 echo $k
 else
echo 1
fi
}
sum(){
if [ "$1" -gt "0" ]; then	
i=`expr $1 - 1`
j=`sum $i`
k=`expr $1 + $j`
echo $k
else
echo 0
fi
}
echo "Enter a number between 1 and 10"
read number
if [ "$number" -ge 1 -a "$number" -le 10 ]
then
#echo "$number cool"
echo -n "factorial: "

factorial $numbr
echo -n "sum: "
sum $number
break
else
echo "wrong input"
exit 0
fi
