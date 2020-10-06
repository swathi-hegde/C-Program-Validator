%{
	#include<stdio.h>
        #include "y.tab.h"
%}
%%
[#] {printf("%s",yytext);return HSH;}
"include" {printf("%s",yytext);return INC;}
[<] {printf("%s",yytext);return LT;}
[>] {printf("%s",yytext);return GT;}
[{] {printf("%s",yytext);return OFB;}
"}" {printf("%s",yytext);return CFB;}
"stdio.h"|"math.h"|"stdlib.h"|"string.h" {printf("%s",yytext);return STD;}
"main" {printf("%s",yytext);return MAIN;}
[(] {printf("%s",yytext);return OB;}
[)] {printf("%s",yytext);return CB;}
[a-zA-Z_][a-zA-Z0-9_]*[;] {printf("%s",yytext);return ID;}
[ \t]+ {printf("%s",yytext);return SP;}
"int"|"float"|"char" {printf("%s",yytext);return DT;}
"return" {printf("%s ",yytext);return RET;}
";" {printf("%s",yytext);return SC;}
%%
int yywrap()
{
        return 1;
}



