
DIGIT    [0-9]+
ID       [a-zA-Z][a-zA-Z0-9]*
OP       ["+"|"-"|"*"|"/"|":"|"="|"!"|">"|"<"]

%%

"CONST"|"VAR"|"PROCEDURE"|"CALL"|"BEGIN"|"END"|"IF"|"THEN"|"WHILE"|"DO"|"ODD"      printf( "A keyword: %s\n", yytext );

"const"|"var"|"procedure"|"call"|"begin"|"end"|"if"|"then"|"while"|"do"|"odd"      printf( "A keyword: %s\n", yytext );

{DIGIT}     printf( "An integer: %s\n", yytext);

{ID}        printf( "An identifier: %s\n", yytext );

{OP}        printf( "An operator: %s\n", yytext );

"("|")"|"."|";"|","   printf( "A delimiter: %s\n", yytext );


[ \t\n]+          /* eat up whitespace */

%%

main( argc, argv )
int argc;
char **argv;
    {
    ++argv, --argc;  /* skip over program name */
    if ( argc > 0 )
            yyin = fopen( argv[0], "r" );
    else
            yyin = stdin;

    yylex();
    }