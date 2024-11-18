%{
#include <stdio.h>
#include <string.h>

// External declaration for global counters
extern int chars;
extern int words;
extern int lines;

// Symbol table functions
void insert_symbol(const char* name, const char* type);
%}

/* Flex rules */
%%

[a-zA-Z_][a-zA-Z0-9_]*   { words++; chars += strlen(yytext); insert_symbol(yytext, "identifier"); }
\n                       { chars++; lines++; }
.                        { chars++; }

%%

int yywrap() {
    return 1;
}