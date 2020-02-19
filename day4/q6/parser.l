%{
#include<stdio.h>
int words =0, lines=0, letters=0, num =0, sp_char=0;
%}
%%
\n {lines++;}
[\t ' '] {words++;}
[a-zA-Z] {letters++;}
[0-9] {num++;}
. {sp_char++;}
%%

int yywrap(){}
int main(){
    printf("Enter the string:"); 
    yylex();
    printf("The number of lines are: %d\n",lines);
    printf("The number of words are: %d\n",words);
    printf("The number of letters are: %d\n",letters);
    printf("The number of special characters are: %d\n",sp_char);
}