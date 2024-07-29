#!/bin/bash
#Shell script to accept a username in command line argument and check when that user logged in
username=$1
user_found=`w | grep $username`
if [ "$user_found" == "" ]
then
	echo "User not logged in currently"
else
	w | grep $username | awk 'BEGIN {print "User\tLogin Time\n";}{login_time=$4;}END{print $1,"\t",$4;}'
fi
