#include <stdio.h>
#include <unistd.h> // For execve.
#include <stdlib.h> // in example code, don't know what this is for.

// Warnings about argc, argv are not something to be worried about at this point.
int main(int argc, char *argv[], char **env)
{
	// char *exePath = "/bin/ls";
	printf("environment variable is %s\n", getenv("ABSPATH"));
	int i = 0;
	while(env[i] != NULL)
	{
		printf("%s\n", env[i++]);
	}
	char *exePath = "./.testscript";
	char *myArray[] = {NULL, NULL, NULL, NULL}; // Pass in single argument, array is null terminated.

	myArray[0] = "hello";
	printf("before execve\n");
	execve(exePath, myArray, env);
	printf("returned to main\n");
	return 0;
}
