%{
#include<stdio.h>
int numcomments = 0;
FILE *fptr;
%}

%%
\/\/.*\n         {numcomments++;fprintf(fptr,"\n");}
\/\*(.|\n)*\*\/  {numcomments++;}
(.|\n)           {fprintf(fptr,"%s",yytext);}
%%

int yywrap(void)
{
	return 1;
}

int main(void)
{
	fptr = fopen("outputcode.c","w");
	yylex();
	printf("number of comments is %d",numcomments);
	fclose(fptr);
	return 0;
}
