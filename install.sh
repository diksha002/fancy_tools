#!/bin/bash

dir="~/src/fancy_tools"
a="source $dir/.aliases"
b="source $dir/fancy_functions.sh"
c=$(<~/.bashrc)
d="export PATH=$PATH:~/bin"

#file .aliases
if grep -q "$a" <<< "$c"; then
	echo "File '.aliases' already in bash"
else
	echo source $dir/.aliases >> ~/.bashrc
	echo "File '.aliases' successfully added in bash"
fi

#file fancy_functions.sh
if grep -q "$b" <<< "$c"; then
	echo "File 'Fancy_functions.sh' already in bash"
else
	echo source $dir/fancy_functions.sh >> ~/.bashrc
	echo "File 'fancy_functions.sh' successfully added in bash"
fi

#folder ~/bin
if [[ -d ~/bin ]]
then
	echo "folder ~/bin already exists"
else
	mkdir ~/bin
	echo "folder ~/bin successfully created"
fi

#PATH
if grep -q "$d" <<< "$c"; then
	echo "PATH already added in bash"
else
	echo "export PATH=$PATH:~/bin" >> ~/.bashrc
	echo "PATH successfully added in bash"
fi

#folder src
if [[ -d ~/src ]]
then
        echo "folder ~/src already exists"
else
        mkdir ~/src
        echo "folder ~/src successfully created"
fi

#clone fancy_tools in src
if [[ -d ~/src/fancy_tools ]]
then
	echo "fancy_tools already cloned in folder src"
else
	git clone --single-branch --branch master https://github.com/diksha002/fancy_tools.git ~/src/fancy_tools
	echo "successfully cloned fancy_tools in ~/src"
fi

cp ~/src/fancy_tools/bin/updateFancyTools ~/bin
chmod +x ~/bin/updateFancyTools
