CC=gcc
CFLAGS=-Wall -Wextra

bash_alias: bash_alias.c
	$(CC) -o bash_alias bash_alias.c $(CFLAGS)
