#!/bin/bash

echo "==========================================================================="
echo "      ||=====\\\	||=====	||=====	||\\	    //|| ||===== ||=====        ="
echo "      ||     ::	||	|| 	|| \\	   // || ||	 ||	        ="
echo "      ||     ::	||=====	||=====	||  \\	  //  || ||===== ||=====        ="
echo "      ||     ::	||	||	||   \\	 //   || ||	 ||	        ="
echo "      ||=====//	||=====	||===== ||    \\//     || ||===== ||=====        ="
echo "==========================================================================="

sleep 2
echo "				"
echo "				"
if [[ $EUID == 0 ]]
then

echo "Welcome to Ubuntu Fresh install. I am gonna install all the required packages for you."

sleep 2

echo "so I assume you have more than 1 gigabyte of data for this process."
echo " 					"
sleep 2
echo "loading.."
sleep 1
echo "....."
sleep 1
echo "......"
sleep 1
echo "........"
sleep 1
echo "..........."
sleep 1
echo "............."
sleep 1

echo "			"

echo "========================================="
echo "---------------HERE WE GO---=------------"
echo "========================================="

echo "			"
sleep 2

apt update && apt -y upgrade && snap install vlc && apt install -y htop && snap install whatsapp-for-linux

sleep 2

echo "How are you hanging up."

echo "			"

echo "lets continue"

sleep 2

apt install -y net-tools && apt install -y neofetch 

clear

neofetch 

sleep 2

apt install -y cowsay && apt install -y sl

clear 

cowsay "you asleep or just watching"

sleep 2

cowthink "i think i will just continue byee---" 

sleep 2

clear

echo "========================================="
echo "						" 
echo "------GREAT THE HARD PART IS OVER--------"
echo "------NOW WE CAN OFFICIALLY WELCOME YOU TO THE LINUX COMMUNITY-----"
echo "						"
echo "========================================="

echo "						"

echo "The pc is going to reboot in 5 secs to stop press control + c"

sleep 5

rm -f $0


else
	echo "run as root to continue"
	echo "  	"
	echo "use 'sudo su' command to enter as root."
fi

reboot
