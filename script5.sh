#!/bin/bash

#this script creates a random file
#and shows the user where it has been stored

echo "Hello $USER"

echo "$(date)" >> "$(uptime)".txt

echo "Your file has been stored in $(pwd)"
