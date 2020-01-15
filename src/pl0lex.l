
KEYS    "const"|"var"|"procedure"|"call"|"begin"|"end"|"if"|"then"|"while"|"do"|"CONST"|"VAR"|"PROCEDURE"|"CALL"|"BEGIN"|"END"|"IF"|"THEN"|"WHILE"|"DO"
ASSIGN  ":="
IDENT	[a-zA-z][a-zA-z0-9]*
NUMBER	[1-9][0-9]*
OPER	"+"|"-"|"*"|"/"
RELOP	"="|"#"|"<"|"<="|">"|">="|"odd"
SIDE    [,;()\t\r\n ]

%%
{KEYS}      {printf("Key:\t%s\n",yytext);}
{ASSIGN}    {printf("Assign:\t%s\n",yytext);}
{IDENT}     {printf("Ident:\t%s\n",yytext); }
{NUMBER}    {printf("Number:\t%s\n",yytext); }
{OPER}      {printf("Oper:\t%s\n",yytext);}
{RELOP}     {printf("Relop:\t%s\n",yytext);}
{SIDE}      {/*ignore*/}
.           {printf("Invalid char:%s\n",yytext);}

%%
main()
    {
    yylex();
    }

