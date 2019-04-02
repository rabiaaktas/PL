
%%
[a-z][A-Z0-9]*                  printf("VARIABLE");
[0-9]*                          printf("INTEGER");
[0-9]*(\.)?[0-9]*               printf("FLOAT");
const                           printf(" CONSTANT");
if                              printf(" IF");
else                            printf(" ELSE");
then                            printf(" THEN");
while                           printf(" WHILE");
do                              printf(" DO");
print                           printf(" PRINT");
scan                            printf(" SCAN");
and                             printf(" log_and");
or                              printf(" log_or");
_                               printf("Unexpected Character");
=                               printf("EQUALS");
;                               printf("SEMICOLON");
True                            printf("BOOLEAN");
False                           printf("BOOLEAN");
"=>"                              printf("ISE");
"<=> "                            printf("ANCAK VE ANCAK");

%%
int yywrap(void){
  return 1;
}