%{
#include <stdio.h>

int num_lines = 0;
int num_chars = 0;
int num_words = 0;

void count_word();
%}

%%

\n            { num_lines++; num_chars++; }
[ \t]+        { num_chars += yyleng; }
\w+           { count_word(); num_chars += yyleng; }
.             { num_chars++; }

%%

void count_word() {
    num_words++;
}

int main(int argc, char **argv) {
    yylex();
    printf("Lines: %d\n", num_lines);
    printf("Words: %d\n", num_words);
    printf("Characters: %d\n", num_chars);
    return 0;
}

int yywrap() {
    return 1;
}
