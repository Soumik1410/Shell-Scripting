#!/bin/bash
#Shell Script to count number of block device files in /dev directory
cd /dev
num_block_device_files=`ls -l | grep ^d | wc -l`
echo "Number of block device files in /dev directory = $num_block_device_files"
