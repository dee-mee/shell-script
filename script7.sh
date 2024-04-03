#!/bin/bash

##This script illustrates how to make a calculator using bash

clear

sum=0
i="y"

echo "Enter first no: "
read n1
echo "Enter second no: "
read n2

while [ $i = "y" ]
do
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read op

case $op in
	1) sum= expr $n1 + $n2
	echo "sum = "$sum;;
 	2) sum= expr $n1 - $n2
	echo "Sub = "$sum;;
	3) sum= expr $n1 \* $n2
	echo "Mult = "$sum;;
	4) sum= expr $n1 / $n2
	echo "Div = "$sum;;
	*)echo "Invalid choice";;

esac

echo "Do you want to continue (Y/n))? "
read i
if [ $i != "y" ]
then
	exit
fi
done
