#include <stdio.h>
#include <unistd.h> // For execve.

int main()
{
	// It's mad about NULL as an argument, so we're passing in an array with a single nullptr. 
	char* nullA[1] = {NULL};
	printf("before execve\n");
	execve("./testscript", nullA, nullA);
	printf("returned to main\n");
	return 0;
}
