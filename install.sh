#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Installation must be run run as root!"
  exit
fi

gcc main.c -o mkurl
install mkurl /usr/bin
echo "Installation completed."

# echo "Cleaning..."
# rm *
# cd .. ; rmdir Mkurl

echo "Cleaning completed. You can delete this folder."
echo "To remove the application simply write into a terminal:"
echo "\$ sudo rm /usr/bin/mkurl"

echo "To prepare the enviroment run init.sh"