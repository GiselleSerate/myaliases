all: realpath

realpath: realpath.c
	gcc realpath.c -o realpath
