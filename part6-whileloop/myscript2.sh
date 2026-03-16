#!/bin/bash

file=lala

while [ -f ~/$file ]
do 
	echo "the file at $(date) exits"
	sleep 10
done

echo "at $(date) , the file was deleted"
