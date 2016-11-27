#!/bin/bash
if [ -f $1 ]; then
	echo "File named $1 already exists"
else 
	read -p "Do you want to write any header info? (y/n/p) [p pastes from clipboard. xclip must be installed] : " choice
	if [ $choice = "y" ]; then
		echo "Enter header info : (Ctrl+D) when you're done "
		cat >> ./$1
	elif [ $choice = "p" ]; then
		echo // $(xclip -o) >> ./$1
	fi
	less ~/gitfiles/algorithms/cpp-template.cpp >> ./$1
fi
read -p "Open the file with sublime text? (y/n) : " choice
if [ $choice = "y" ]; then
	subl ./$1
fi 