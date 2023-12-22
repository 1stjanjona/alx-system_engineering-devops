#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
int infinite_while(void);
/**
 * main - create 5 zombies
 * Description: after creation of parent process
 * Return: 0 Always
*/
int main(void)
{
	int ndx;
	pid_t zombies;

	for (ndx = 0; ndx < 5; ndx++)
	{
		zombies = fork();
		if (!zombies)
		{
			exit(0);
		}
		if (zombies > 0)
		{
			printf("Zombie process created, PID: %d\n", zombies);
			sleep(1);
		}
	}
	infinite_while();
	return (0);
}
/**
 * infinite_while - infinte while
 * Description: infinite while function
 * Return: 0 Always
*/
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
