#!/bin/bash
#Shell script to move files to be deleted to a .recyclebin directory previously created. Utility to imitate windows recycle bin and future restoration
for filename in "$@"
do
	mv $filename ../.recyclebin/
done
