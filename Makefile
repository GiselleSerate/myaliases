CC=gcc
CFLAGS=-Wall -Wextra

all: bash_alias sublshort

bash_alias: bash_alias.c
	$(CC) -o bash_alias bash_alias.c $(CFLAGS)

sublshort: sublshort.c
	$(CC) -o sublshort sublshort.c $(CFLAGS)

clean:
	rm bash_alias
	rm sublshort
