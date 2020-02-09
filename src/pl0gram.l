%{
#include "pl0gram.tab.h"
%}

Const		"CONST"|"const"
Begin		"begin"|"BEGIN"
Var			"VAR"|"var"
Procedure	"PROCEDURE"|"procedure"
Call		"CALL"|"call"
End			"END"|"end"
If			"if"|"IF"
Then		"THEN"|"then"
While		"WHILE"|"while"
Do			"DO"|"do"
Assign		":="
Id			[a-zA-z][a-zA-z0-9]*
Number		[1-9][0-9]*
Add			"+"
Sub			"-"
MUL			"*"
DIV			"/"
Equal		"="
Lt			"<"
Le			"<="
Gt			">"
Ge			">="
Odd			"ODD"|"odd"
Side    	[,;()\t\r\n ]

%%
{Const}		{return CONST;}
{Begin}		{return ID_BEGIN;}
{Var}		{return VAR;}
{Procedure}	{return PROCEDURE;}
{Call}		{return CALL;}
{End}			{return END;}
{If}			{return IF;}
{Then}		{return THEN;}
{While}		{return WHILE;}
{Do}			{return DO;}
{Assign}		{return ASSIGN;}
{Id}			{yylval = strdup(yytext); return ID;}
{Number}		{yylval = strdup(yytext); printf("%s\n",yylval); return NUMBER;}
{Add}			{return ADD;}
{Sub}			{return SUB;}
{MUL}			{return MUL;}
{DIV}			{return DIV;}
{Equal}		{return EQUAL;}
{Lt}			{return LT;}
{Le}			{return LE;}
{Gt}			{return GT;}
{Ge}			{return GE;}
{Odd}			{return ODD;}
{Side}    	{return SIDE;}

%%

