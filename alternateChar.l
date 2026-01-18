/*to check if the name is valid or not*/
%{
    #include<stdio.h>
    int count=0;
%}

%%
.   {if(count%2==0) printf("%s",yytext); count++;}
\n {count=0; printf("\n");}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}