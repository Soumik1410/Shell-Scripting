#!/bin/bash
#Shell script to accept variable number of cmd line args and create a file for each and echo a message notifying user
for filename in "$@"
do
	touch $filename
	echo "File with name $filename has been created"
done
