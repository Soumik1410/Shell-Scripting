#!/bin/bash
#Shell script to accept filename and directory and make a backup of directory with name as filenamei taken as command line args
filename=$1
directory=$2
echo "-------- Running tar on given directory ---------"
tar cvf $filename $directory
echo -e "\n$filename created\n\n------- Running gzip on tar file -----------\n"
gzip -v $filename
echo -e "$filename.gz created\n\n------- Moving backup gzipped file to /home directory ----------\n"
mv $filename.gz /home/soumik
echo -e "$filename.gz moved to /home/soumik directory"

