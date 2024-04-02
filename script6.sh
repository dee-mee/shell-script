#!/bin/bash

##this script converts uppercase letters to lowercase

echo "Enter the file name: "
read fileName

if [ ! -f $fileName ]; then
	echo "FileName $fileName does not exist."
	exit 1
fi

tr '[A-Z]' '[a-z]' < $fileName >> small.txt
