%{
#include<stdio.h>
int numchar = 0, numwords = 0, numspaces=0,numlines = 0;
%}

%%
\n              {numlines++;numchar++;}
[^ \t\n]+       {numwords++;numchar+=yyleng;}
[ \t]+          {numspaces+=yyleng;numchar+=yyleng;}
%%

int yywrap(void)
{
	return 1;
}

int main(void)
{
	yylex();
	printf("number of characters is %d\n",numchar);
	printf("number of words is %d\n",numwords);
	printf("number of spaces is %d\n",numspaces);
	printf("number of lines is %d\n",numlines);
	return 0;
}