/*to check if the name is valid or not*/
%{
    #include<stdio.h>
%}

%%
^[a-zA-Z][a-zA-Z0-9]*$   { printf("Valid name\n"); }
.* {printf("Invalid name");}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}