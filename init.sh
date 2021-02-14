#!/bin/bash

echo "Do you want to create a folder in $HOME to store the hyperlinks? [Y/n]"
read option

if [option -e "Y"] then
    mkdir $HOME/Hyperlinks
    mkurl Icons https://www.flaticon.com/
    echo "Use Icons.desktop to look for icons for your Hyperlinks."
    echo "To keep order remember to store your links in $HOME/Hyperlinks"
else
    echo "Enviroment not prepared!"
fi