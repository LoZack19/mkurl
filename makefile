CC = /usr/bin/gcc

mkurl: main.c
	$(CC) main.c -o mkurl

install:
	sudo install mkurl /usr/bin
	rm mkurl

post-configure: 
	mkdir $(HOME)/Hyperlinks
	mkurl Icons https://www.flaticon.com/

# Run as root
uninstall:
	rm /usr/bin/mkurl
	echo "The $(HOME)/Hyperlinks folder has to be deleted by hand"
