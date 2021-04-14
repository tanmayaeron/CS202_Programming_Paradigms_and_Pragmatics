%{
#include <stdio.h>
#include <string.h>

void yyerror(const char *str)
{
		printf("invalid string\n");
}

int yywrap()
{
	return 1;
}

int main()
{
		yyparse();
}

%}

%token A B NEWLINE

%%
validstr: A A A A A A A A A A C B NEWLINE        {printf("valid string\n");}
	  ;

C       : C A
          |
	  ;
%%