%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int expected_type = 1; //1 represents operand, 2 represents operator
int isOpening = 0;
int isValid = 1;

int operatorsCount = 0;
int operandCount = 0;              //operand refer to identifiers
int integerCount = 0;

char operators[100][2], operands[100][11],inte[100][11];

int temp = 0;

void fun_integer()
{
	if(expected_type==2)
	isValid = 0;
	expected_type = 2;
	integerCount++;
	temp++;
	strcpy(inte[integerCount-1],yytext);
}

void fun_identifier()
{
	if(expected_type==2)
	isValid = 0;
	expected_type = 2;
	operandCount++;
	temp++;
	strcpy(operands[operandCount-1],yytext);	
}

void fun_operator()
{
	if(expected_type==1)
	isValid = 0;
	expected_type = 1;
	operatorsCount++;
	strcpy(operators[operatorsCount-1],yytext);
}

void openBrace()
{
	if(expected_type==2)
	isValid = 0;
	isOpening = 1;
	temp = 0;
}

void closeBrace()
{
	if(expected_type==1)
	isValid=0;
	if(temp==0)
	isValid = 0;
	temp=0;
	if(isOpening==0)
	isValid = 0;
	isOpening=0;
}

%}

%%
[0-9]+            				{fun_integer();}
[a-zA-Z]([a-zA-Z0-9_])*				{fun_identifier();}
[-+*/]                                          {fun_operator();}
\(					        {openBrace();}
\)                                              {closeBrace();}
[ \t]
.                                               {isValid=0;}
%%

int yywrap(void)
{
	return 1;
}

int main(void)
{
	yylex();
	if(isValid==1&&expected_type==2&&isOpening==0)
	{
		printf("Valid Expression\n");

		printf("\nIntegers are:\n");
		for(int i=0;i<integerCount;i++)
		printf("%s\n",inte[i]);

		printf("\nIdentifiers are:\n");
		for(int i=0;i<operandCount;i++)
		printf("%s\n",operands[i]);

		printf("\nOperators are:\n");
		for(int i=0;i<operatorsCount;i++)
		printf("%s\n",operators[i]);

	}
	else
	{
		printf("Invalid Expression");
	}
	return 0;
}
