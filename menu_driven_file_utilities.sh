#!/bin/bash
#Shell script to display a menu to user to run some common file utility commands based on user choice
echo "Enter number to choose which command to execute : "
echo -e -n "1.Copy a file to a path\n2.Remove a file\n3.Rename a file\n"
read choice
case $choice in
	"1")
		echo -n "Enter filename or full path of file : "
	    	read filename
		echo -n "Enter full path to copy to : "
		read path
		cp $filename $path
		echo "File has been copied"
		;;
	"2")
		echo -n "Enter filename or full path of file : "
		read filename
		rm $filename
		echo "File has been deleted"
		;;
	"3")
		echo -n "Enter filename or full path of file : "
		read oldfilename
		dirpath=`echo $(dirname "$oldfilename")`
		echo -n "Enter new name of file : "
		read newfilename
		newfilename=$dirpath/$newfilename
		#echo $newfilename
		mv $oldfilename $newfilename
		echo "File has been renamed"
		;;
	*)
		echo "Invalid choice"

esac
