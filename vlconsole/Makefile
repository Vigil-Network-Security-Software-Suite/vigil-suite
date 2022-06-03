all: vlconsole clean

CC=gcc
CFLAGS=-Wall

main.o:
	$(CC) $(CFLAGS) -c main.c

vlconsole: main.o
	$(CC) $(CFLAGS) -o vlconsole.exe $^ -l curses


clean:
	rm *.o