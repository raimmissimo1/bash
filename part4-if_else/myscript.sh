#!/bin/bash

mynum=500
ex2=1000
command=/usr/bin/htop

##1if [ $mynum -eq 500 ]
##then 
##	echo "num is equal to 500"
##else
##	echo "num is not equal to 500"
##fi

##2if [ $ex2 -ne 1000 ]
##then 
##	echo "num is not equal to 1000"
##else
##	echo "num is equal to 1000"
##fi

###3 We can check whether the file exists or not

##if [ -f ~/fermerssh.sh ]
##then 
##	echo "the file exists"
##else
##	echo "the file does not exist"
##fi

if [ -f $command ]
then 
	echo "$command is available"
else
	echo "$command is not available, lets install.."
	sudo pacman -Syu && sudo pacman -S htop
fi

$command

