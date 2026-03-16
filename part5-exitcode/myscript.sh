#!/bin/bash

command=/usr/bin/steam

if [ -f $command ]
then
	success=$?
	echo "file exists, and exit code is: $success"
else
	fail=$?
	echo "file doesnt exit, and exit code is: $fail"
fi

