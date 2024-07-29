#!/bin/bash
#Shell script to show a menu of 4 choices to user. Based on user input to execute corresponding command
echo "Enter number to choose which shell command to execute : "
echo -e -n "1. pwd\n2.ls\n3.who\n4.exit\n"
read choice
case $choice in
	"1")
		pwd
		;;
	"2")
		ls
		;;
	"3")
		who
		;;
	"4")
		exit
		;;
	*)
		echo "Invalid choice"
esac
