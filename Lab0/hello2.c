#include <stdio.h>

int main()
{
	char str1[30];
	printf("Please enter your name: \n");
	scanf("%s", str1);
	printf("Welcome to CSE031, %s%s\n", str1, "!");
	return 0;
}
