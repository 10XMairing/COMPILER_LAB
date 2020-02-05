%{
#include<stdio.h> 
#include<stdlib.h> 
%}

%%
^[a-zA-Z]*  {printf("alphabet\n");}; 
^[^a-zA-Z]*  {printf("not a alphabet\n");};
%%

int yywrap(){}
int main(int argc, char **argv){
    yylex();
    return 0;
}