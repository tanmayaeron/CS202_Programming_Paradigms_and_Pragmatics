%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "y.tab.h"
%}

%%
[0-9]+			yylval=atoi(yytext);return NUMBER;
\+			return ADD;
-			return SUB;
\*			return MUL;
\/			return DIV;
\(			return OBRACE;
\)			return EBRACE;
[ \t]
\n                      return NEWLINE;
.
%%

