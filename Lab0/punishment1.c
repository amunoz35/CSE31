#include <stdio.h>
int main()
{
	int input;
	printf("Enter the number of lines for the punishment: \n");
	scanf("%d",&input);
	if(input > 0){
		for(int b = 0; b < input; b++){
			printf("C programming language is the best!");
		}
	}
	else
		printf("You entered an incorrect value for the number of lines!");
	return 0;
}
