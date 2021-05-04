#!/bin/bash
# Tyron Everett
# ECE 3524
# Project 1
# Example of Command  sh ./myScript.sh Assignments output3.html
#check for correctmcommand line arguments

#arg1="/Desktop/"
argg2="filetree1.html"

#Tried to implement accessibility check, but I ran into some issues
#if ! [[ "$1" == /* ]] ; then
#	path=.
#fi
find /home -type d | while read file; do
	#path="$path/$file"
	#if ! [[ -x "$path" ]] ; then 
	#	echo "'$file' not accessible"
	#fi
	#if ! [[ -r "$1" ]] ; then 
	#	echo "'$1' not readable"
	#fi
	echo "<h1>$(basename "$file")</h1>" >> $argg2
	
	find $file -type f -maxdepth 1 | while read subd; do
	#path="$path/$file/$subd"
	#if ! [[ -x "$path" ]] ; then 
	#	echo "'$subd' not accessible"
	#i
	#if ! [[ -r "$subd" ]] ; then 
	#	echo "'$subd' not readable"
	#fi
	echo  "<DD><b2>$(basename "$subd")</b2></DD>" >> $argg2
	done
	done
