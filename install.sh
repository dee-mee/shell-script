#!/bin/bash

echo "==========================================================================="
echo "      ||=====\\\	||=====	||=====	||\\	    //|| ||===== ||=====        ="
echo "      ||     ::	||	|| 	|| \\	   // || ||	 ||	        ="
echo "      ||     ::	||=====	||=====	||  \\	  //  || ||===== ||=====        ="
echo "      ||     ::	||	||	||   \\	 //   || ||	 ||	        ="
echo "      ||=====//	||=====	||===== ||    \\//     || ||===== ||=====       ="
echo "==========================================================================="

sleep 2
echo "				"
echo "				"
set -e

if [[ $EUID == 0 ]]
then

echo "Welcome to Ubuntu Fresh install. I am gonna install all the required packages for you."

sleep 2

echo "you should have a strong and stable network connection for this installation."
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
# I have used snap version as the apt version is currently not stable in ubuntu
apt update && apt -y upgrade && apt install vlc && apt install -y htop && apt install git

sleep 2

echo "How are you hanging up."

echo "			"

echo "lets continue"

sleep 2
#net-tools enable you to run commnads like ifconfig

apt install -y net-tools && apt install -y neofetch && apt install pip -y

apt install docker-compose -y

snap install telegram-desktop && snap install whatsapp-for-linux

clear

sleep 2

#cowsay is a fun way of terminal cool tricks that displays whatever you type in it.
#sl is a display of a moving train or steam locomotive which
#can be used with many options available on its manpage.

apt install -y xcowsay && apt install -y sl && apt install cowsay

sleep 2

snap install pycharm-community --classic

clear

echo "========================================="
echo "						" 
echo "------GREAT THE HARD PART IS OVER--------"
echo "------NOW WE CAN OFFICIALLY WELCOME YOU TO THE LINUX COMMUNITY-----"
echo "						"
echo "========================================="

echo "						"
sudo apt install curl

sudo apt update

echo "The pc is going to reboot in 5 secs to stop press control + c"

sleep 5

rm -f $0


else
	echo "run as root to continue"
	echo "  	"
	echo "use 'sudo su' command to enter as root."
fi
init 6
