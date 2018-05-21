#include <unistd.h> // For fork.
#include <sys/types.h> // For pid_t.

int main(int argc, char* argv[], char** env)
{
	char* exePath = "/mnt/c/Program Files/Sublime Text 3/sublime_text.exe";
	char* argArray[] = {"[progName]", NULL};
	if(fork() == 0)
	{
		execve(exePath, argArray, env);
	}
	else
	{
		return 0;
	}
}
