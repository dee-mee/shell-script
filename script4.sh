#!/bin/bash

#this script is about navigatting directory levels
echo ""
LEVEL=$1
echo ""

#initialize CDIR to the current directory
CDIR="."

#loop to move up the directory levels.
for ((i=1;i<=LEVEL;i++)); do
	CDIR="../$CDIR"
done


#change to the calculated directory.
cd "$CDIR" || exit

#print the current working directory.
echo "You are in: $PWD"

#start new Bash session
exec /bin/bash
