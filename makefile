CC = /usr/bin/gcc

mkurl: main.c
	$(CC) main.c -o mkurl

install:
	sudo install mkurl /usr/bin
	rm mkurl

configure: 
	mkdir $HOME/Hyperlinks
	mkurl Icons https://www.flaticon.com/

uninstall:
	rm /usr/bin/mkurl