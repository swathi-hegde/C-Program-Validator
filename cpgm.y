%{
	#include<stdio.h>
        FILE *fp;
        extern FILE *yyin;
        extern char *yytext;
%}
%token HSH INC MAIN OB CB OFB CFB ID SC SP GT LT STD DT RET
%%
pigeon : link main SP
       ;
link : HSH INC LT STD GT link
     |
     ;
main : MAIN OB CB OFB content SP CFB
     |
     ;
content : DT SP ID SP content SP RET SC SP
        |
        ;
%%
int yyerror(char *msg)
{
       printf("NOT VALID\n%s",yytext);
        exit(1);
}
main()
{       fp=fopen("test.txt","r");
        yyin=fp;
        //system("./whspace");
        yyparse();
}


