#!/bin/bash
#Shell script to print multiplcation table of given umber till 10
echo -n "Enter number : "
read x
i=1
while [ $i -le 10 ]
do
	y=`expr $x \* $i`
	echo "$x x $i = $y"
	i=`expr $i + 1`
done	
