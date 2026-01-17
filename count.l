/*to count the number of spaces , tabs , newlines and other characters*/
%{
    #include<stdio.h>
    int new=0,space=0,tab=0,other=0;
%}

%%
\n {new++;}
\t {tab++;}
" " {space++;}
. {other++;}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    printf("Newline:%d\n",new);
    printf("Tab:%d\n",tab);
    printf("Space:%d\n",space);
    printf("Other:%d\n",other);
    return 0;
}