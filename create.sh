#!/bin/sh

mkdir $1
if [ $? == 0 ]
then
	cd $1
	mkdir libft
	mkdir includes
	cp -rf ~/FOLDER/libft .
	cp -rf ~/FOLDER/includes .
	vim $1.make
	mv $1.make Makefile
	sed "s/thename/$1/g" Makefile > te
	cat te > Makefile
	rm te
	cd includes
	vim $1.h
	cd ..
	$HOME/bin/vim main.c
fi
