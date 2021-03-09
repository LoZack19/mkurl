CC = /usr/bin/gcc

mkurl: main.c
	$(CC) main.c -o mkurl

install:
	sudo install mkurl /usr/bin
	rm mkurl

uninstall:
	rm /usr/bin/mkurl