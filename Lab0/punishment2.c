#include <stdio.h>
int main()
{
	int input, typo;
	printf("Enter the number of lines for the punishment: \n");
	scanf("%d",&input);
	if(input <= 0)
		printf("You entered an incorrect value for the number of lines!");

	printf("Enter the line for which we want to make a typo: ");
	scanf("%d", &typo);
	
	if(typo < 0 || input < typo){
		printf("You entered an incorrect value for the line typo");
	}
	for(int b = 0; b < input; b++){
		if(b + 1 == typo)
		printf("C programming language is the bet!");
	printf("C programming language is the best!");
	}

	
	return 0;
}
