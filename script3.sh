#!/bin/bash
#This is just a simple example of an interactive script

echo ""
echo "Hey. What's your first name?"
read a
echo "Thankyou Mr./Mrs. $a Please give us your second name?"
read b
echo "Thank you very much Mr./Mrs. $a $b for your second name."
echo "****************"
echo "Hello again Mr./Mrs. $a $b, it's time to say goodbye."
