#include <stdio.h>
#include <unistd.h> // For execve.
#include <stdlib.h> // in example code, don't know what this is for.

int main(int c, char *v[], char **env)
{
	
	char *exePath = "/bin/ls";
	char *myArray[] = {NULL, NULL, NULL, NULL};

	myArray[0] = "hello";
//	myArray[1] = v[2];
//	myArray[2] = v[3];
	printf("before execve\n");
	execve(exePath, myArray, env);

	// It's mad about NULL as an argument, so we're passing in an array with a single nullptr. 
//	char* nullA[1] = {NULL};
//	printf("before execve\n");
//	execve("./.testscript", nullA, nullA);
	printf("returned to main\n");
	return 0;
}
