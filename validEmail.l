%{
    #include<stdio.h>
%}

%s Q1 Q2 Q3 Q4 DEAD

%%
<INITIAL>[a-zA-Z0-9]+ {BEGIN INITIAL;}
<INITIAL>@|\. {BEGIN Q1;}
<INITIAL>.|\n {BEGIN DEAD;}

<Q1>(gmail|outlook|co) {BEGIN Q2;}
<Q1>.|\n {BEGIN DEAD;}

<Q2>\. {BEGIN Q3;}
<Q2>. {BEGIN DEAD;}

<Q3>(in|com) {BEGIN Q4;}
<Q3>. {BEGIN DEAD;}

<Q4>\n {BEGIN INITIAL; printf("email good");}
<Q4>. {BEGIN DEAD;}

<DEAD>. {BEGIN INITIAL; printf("invalid");}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}