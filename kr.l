  GNU nano 2.9.3                                                                     a.l

digit[0-9]
%%


"const"                         return CONSTANT;

"if"                            return IF;
"else"                          return ELSE;
"then"                          return THEN;
"while"                         return WHILE;
"do"                            return DO;
"print"                         return PRINT;
"scan"                          return SCAN;
"and"                           return log_and;
"or"                            return log_or;
<INITIAL>"/*"                   COMM ; BEGIN(INCOMMENT) ;
<INCOMMENT>"*/"                 COMM ; BEGIN(INITIAL) ;
<INCOMMENT>.|\n                 COMM ;
true                            printf("BOOLEAN");
False                           printf("BOOLEAN);
[a-z][A-Z0-9]*                  printf("VARIABLE"),
[+-]?[1-9]{digit}*              printf("INTEGER");
[+-]?{digit}*(\.)?{digit}*      printf("FLOAT");
[ \t\n]                         ;
_                               printf("Unexpected Character\n");
=                               printf(EQUALS);
;                               printf("SEMICOLON");

%%
int yywrap(void)
{
return 1;
}

