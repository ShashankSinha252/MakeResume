#!/bin/bash

until [ -z "$1" ]
do
	#create profile
	mkdir $1
	cp barebones/Makefile barebones/diff.patch $1
	cp source/*.tex $1
	shift
done

#update Makefile
./update.sh
