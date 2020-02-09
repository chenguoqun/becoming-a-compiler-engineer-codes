%{
#include <ctype.h>
#include <stdio.h>
int yylex(void);
%}
%token CONST ID_BEGIN VAR PROCEDURE CALL END IF THEN WHILE DO ASSIGN ID NUMBER ADD SUB MUL DIV EQUAL LT LE GT GE ODD SIDE
%%
expr	: expr ADD expr	{int result = atoi($1) + atoi($3); printf("%s+%s=%d\n", $1,$3,result); }
		| NUMBER	
%%
int main()
{
    return yyparse();
}
yyerror(char *s)
{
    printf(stderr,"error:%s\n",s);
}
