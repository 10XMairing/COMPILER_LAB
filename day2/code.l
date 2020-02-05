/*Definition Section*/

%{
#include<stdio.h>
%}

/*Rule Section*/

%%

auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     {ECHO; printf("\nKEYWORD\n");} 																				

[{};,()]   {printf("\tSEPERATOR\t");}	

[+-/=*%]   {printf("\tOPERATOR\t");}		


[!@#$&]   {printf("\tSPECIAL CHARACTERS\t");}	

([a-zA-Z][0-9][_])+|[a-zA-Z]* {printf("\tIdentifier\t");}

.|\n ; 

%%

/*call the yywrap function*/
int yywrap()								
{
return 1;
}


/*Auxiliary function*/
/*Driver function*/

int main(void)
{
/*call the yylex function.*/
yylex();
return 0;
}
