/*to count total number of characters*/
%{
    #include<stdio.h>
    int c=0;
%}

%%
[a-zA-Z] {c++;}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    printf("Total characters:%d\n",c);
    return 0;
}