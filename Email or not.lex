Email or not.lex
%{
#include<stdio.h>
%}
%%
[a-z.0-9]+@[gmail|yahoo|outlook|saveetha]+".com"|".in" {printf("\n%s is a mail",yytext);}
.+ {printf("\n%s is not a mail",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
