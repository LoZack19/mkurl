# MKURL UTILITY
Mkurl is a software for creating hyperlinks to websites that can be opened through a file manager. The syntax is simple and intuitive:  
`$ mkurl [NAME] [LINK]`  
It is possible to change the link inside a hyperlink by typing the same command with a different link. The hyperlink will be created in the current directory with a .desktop extention.

## Install
1. Compiling the source: `$ make`
2. Installing the source: `$ make install`
3. After this you can delete the building folder

## Enviroment setup
For the sake of cleanliness and clarity, and to make quick access to hyperlinks easier, we suggest creating a folder in the home directory to house them. Running `$ make configure` prepares this enviroment. Remember that the program will always generate hyperlinks in the current folder, unless a full path is entered instead of [NAME].  
To run `$ make configure` make sure you already installed the program.
