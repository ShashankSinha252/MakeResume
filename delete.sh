#!/bin/bash

until [ -z "$1" ]
do
	#delete profile
	rm -rf $1
	shift
done

#update Makefile
./update.sh
