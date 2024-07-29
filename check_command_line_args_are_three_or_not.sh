#!/bin/bash
#Shell script to check if 3 command line args are passed, if yes, it prints them. Otherwise, it prints an error.
if [ "$#" -eq 3 ]
then
	echo "The 3 command line arguments passed are $1, $2 and $3"
else
	echo "Not 3 arguments were passed"
fi 
