#!/bin/bash

dir=$(pwd)
a="source $dir/.aliases"
b="source $dir/fancy_functions.sh"
c=$(<~/.bashrc)
d="export PATH=$PATH:$dir/bin"

if grep -q "$a" <<< "$c"; then
	echo "File '.aliases' already in bash"
else
	echo source $dir/.aliases >> ~/.bashrc
	echo "File '.aliases' successfully added in bash"
fi

if grep -q "$b" <<< "$c"; then
	echo "File 'Fancy_functions.sh' already in bash"
else
	echo source $dir/fancy_functions.sh >> ~/.bashrc
	echo "File 'fancy_functions.sh' successfully added in bash"
fi

if grep -q "$d" <<< "$c"; then
	echo "PATH already added in bash"
else
	echo "export PATH=$PATH:$dir/bin" >> ~/.bashrc
	echo "PATH successfully added in bash"
fi

