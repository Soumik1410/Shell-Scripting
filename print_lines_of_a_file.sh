#!/bin/bash
#Shell script that aceepts a file name and starting and ending line numbers and prints all lines in between
echo -n "Enter filename : "
read filename
echo -n "Enter starting line number : "
read startline
echo -n "Enter ending line number : "
read endline
i=1
while read -r line
do
	if [ $i -ge $startline -a $i -le $endline ]
	then
		echo $line
	fi
	i=`expr $i + 1`
done<"$1"
