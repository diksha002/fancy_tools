#!/bin/bash

dir=$(pwd)
a="source $dir/.aliases"
b="source $dir/fancy_functions.sh"
c=$(<~/.bashrc)

if grep -q "$a" <<< "$c"; then
	echo "File '.aliases' already in bash"
else
	echo source $dir/.aliases >> ~/.bashrc
fi

if grep -q "$b" <<< "$c"; then
	echo "File 'Fancy_functions.sh' already in bash"
else
	echo source $dir/fancy_functions.sh >> ~/.bashrc
fi
