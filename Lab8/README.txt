count.l
1.Run the program by entering following commands
  lex count.l
  cc lex.yy.c -o count -ll
  ./count
  If you are using flex instead of lex, you may have to change -ll to -lfl
2.Enter input text
3.Terminate with a EOF(Ctrl+D).
4.Space and tab is taken as one character.Tab is counted as one space only 


Comments.l
1.inputcode.c contains C program from which comments has to be removed 
2.Run the program by entering the following commands
  lex Comments.l
  cc lex.yy.c -o comments -ll
  ./comments < inputcode.c
  If you are using flex instead of lex, you may have to change -ll to -lfl
3. Program displays number of comments.
4. outputcode.c contains code without comments

ab.y
1.Run the program by entering the following commands
  lex ab.l
  yacc -d ab.y
  cc lex.yy.c y.tab.c -o ab
  ./ab
  If you get an error about your compiler not being able to find yylval, add this to ab.l just beneath 
  include directives.
  extern YYSTYPE yylval;
2.Enter input string.
3.Program displays whether string is valid or not.
4.If string is invalid, program terminates itself, otherwise terminate it with a EOF(Ctrl+D).
5.Match is case sensititve.

calc.l
1.Run the program by entering following commands
  lex calc.l
  cc lex.yy.c -o calc -ll
  ./calc
  If you are using flex instead of lex, you may have to change -ll to -lfl
2.Enter the expression and then terminate the program with EOF(Ctrl+D)
3.Program displays whether it is a valid expression or not.
4.If it is a valid expression, integer constants, identifiers and operators are printed separately.
5.Only four operators +-*/ are allowed.
6.Only one type of paranthesis '()' is allowed.
7.Identifier should start with a letter followed by zero or more letters,digits and underscore.
8.Maximum number of operators, operand and integer is 100.
9.Identifier and Integer constants should not be more than 10 character long.

calc.y
1.Run the program by entering the following commands
  lex calculator.l
  yacc -d calc.y
  cc lex.yy.c y.tab.c -o calc
  ./calc
  If you get an error about your compiler not being able to find yylval, add this to calculator.l just beneath 
  include directives.
  extern YYSTYPE yylval;
2.Enter expression.
3.It displays whether it is a valid expression or not.
4.If it is a valid expression, it displays value of expression. After it, you can enter another expression.
5.Program terminates itself if it is an invalid expression. You can terminate the program by EOF(Ctrl+D).
6.Only four operators +-*/ are allowed.
7.Operands can be integer only.
 


























