# MKURL UTILITY
Mkurl is a software for creating hyperlinks to websites that can be opened through a file manager. The syntax is simple and intuitive:  
`$ mkurl [NAME] [LINK]`  
It is possible to change the link inside a hyperlink by typing the same command with a different link. The hyperlink will be created in the current directory in .desktop format.

## Download
1. Compiling the source: `$ gcc main.c -o mkurl`
2. Installing the source: `$ sudo install mkurl /usr/bin`
3. Deleting the building folder: `$ cd .. ; rm -rf Mkurl`

The script `install.sh` automates the installation process. To automate the cleanup decomment lines 12, 13 and 14.  

## Enviroment setup
For the sake of cleanliness and clarity, and to make quick access to hyperlinks easier, we suggest creating a folder in the home directory to house them. The `init.sh` script prepares this enviroment. Remember that the program will always generate hyperlinks in the current folder, unless a full path is entered instead of [NAME].
