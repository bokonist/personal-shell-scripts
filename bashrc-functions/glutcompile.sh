#!/bin/bash
glutcompile() 
{
	g++ -o $1 $2 -lGL -lGLU -lglut
}