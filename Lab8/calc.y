%{
#include <stdio.h>
#include <string.h>

void yyerror(const char *str)
{
		printf("Invalid expression");
}

int yywrap()
{
	return 1;
}

main()
{
		yyparse();
}

%}

%token NUMBER ADD SUB MUL DIV OBRACE EBRACE NEWLINE
%left ADD SUB
%left MUL DIV

%%

program:
		program expression NEWLINE         {printf("Valid Expression\nValue is %d\n",$2);}
	        |
		;

expression:  
		NUMBER				   {$$=$1;}
		|expression ADD expression         {$$=$1+$3;}
		|expression SUB expression         {$$=$1-$3;}
		|expression MUL expression         {$$=$1*$3;}
		|expression DIV expression         {$$=$1/$3;}
		|OBRACE expression EBRACE          {$$=$2;}
		;
%%