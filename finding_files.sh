#!/bin/bash
#Shell script to find files from a starting point and then echo suitable message if not found.
echo "Trying to find file with name testfile from starting point /home/soumik/.recyclebin directory"
find_output=`find /home/soumik/.recyclebin -name "testfile"`
if [ "$find_output" == "" ]
then
	echo "testfile file not found from starting point /home/soumik/.recyclebin"
else
	echo "testfile file found at path : $find_output"
fi

echo "Trying to find file with name testfile2 from starting point /home/soumik/.recyclebin directory"
find_output=`find /home/soumik/.recyclebin -name "testfile2"`
if [ "$find_output" == "" ]
then
        echo "testfile2 file not found from starting point /home/soumik/.recyclebin"
else
	echo "testfile2 file found at path : $find_output"
fi

