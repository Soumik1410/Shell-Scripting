#!/bin/bash
#Shell script to print Good Morning/Afternoon/Evening depending on current system time
cur_hour=`date | awk '{print $4;}' | cut -f 1 -d :`
cur_min=`date | awk '{print $4;}' | cut -f 2 -d :`
if [ $cur_hour -lt 12 ]
then
       echo "Good Morning"
elif [ $cur_hour -ge 12 -a $cur_hour -lt 16 ]
then
	echo "Good Afternoon"
elif [ $cur_hour == 16 -a $cur_min -le 30 ]
then
	echo "Good Afternoon"
else
	echo "Good Evening"
fi	
