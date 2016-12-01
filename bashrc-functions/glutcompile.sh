#!/bin/bash
glutcompile() 
{
	if [ $# -eq 1 ]; then
		if g++ $1 -lGL -lGLU -lglut ; then
			echo "Outputted to $PWD/a.out"
		else
			echo "g++ says error."
	elif [ $# -eq 2 ]; then		
		g++ -o $1 $2 -lGL -lGLU -lglut
		echo "Outputted to $PWD/$2"
	elif [ $# -eq 0 ]; then
		echo "Gotta gimme something to compile, pal."
	fi
}