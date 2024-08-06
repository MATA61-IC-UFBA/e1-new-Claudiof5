/* mywc */ 
%option noyywrap nodefault yylineno
%{
int chars = 0;
int words = 0;
int lines = 0;
%}
%%
[A-Za-z]+ { words++; chars += strlen(yytext); }
\n { chars++; lines++; }
. { chars++; }
%%
int main(int argc, char **argv)
{
yylex();
printf("%8d%8d%8d\n", lines, words, chars);
}
