lexer grammar mylexer;

options {
  language = Java;
}

/*----------------------*/
/*   Reserved Keywords  */
/*----------------------*/
INT   : 'int';
VOID  : 'void';
FLOAT : 'float';
WHILE    : 'while';
IF       : 'if';
ELSE     : 'else';
RETURN   : 'return';

/*----------------------*/
/*  Compound Operators  */
/*----------------------*/

/* Comparison Operators */
EQ_OP : '==';
LE_OP : '<=';
GE_OP : '>=';
NE_OP : '!=';
LT_OP : '<';
GT_OP : '>';

/* Unary Operators */
ADD : '+';
SUB : '-';
MUL : '*';
DIV : '/';
PERCENT : '%';

ASSIGN : '=';

/* (extra) logical operators */
AND_OP : '&&';
OR_OP  : '||';
NOT_OP : '!';

/* Delimiters */
LPAREN : '(';
RPAREN : ')';
LBRACE : '{';
RBRACE : '}';
LBRACK : '[';
RBRACK : ']';
SEMI : ';';
COMMA : ',';


FLOAT_NUM: DIGIT+ '.' DIGIT* | '.' DIGIT+;
/* (extra) octal and hexadecimal numbers */
OCT_NUM : '0' [0-7]+;
HEX_NUM : '0' [xX] [0-9a-fA-F]+;

DEC_NUM : '0' | [1-9] DIGIT*;


ID : (LETTER)(LETTER | DIGIT)*;

/* (extra) character literals and string literals */
CHAR_VAL : '\'' ( ~['\\\r\n] | '\\' [ntr'\\] ) '\'';
STRING_VAL : '"' ( ~["\\\r\n] | '\\' [ntr"\\] )* '"';


/* Comments */
COMMENT1 : '//' ~[\r\n]* -> skip;
COMMENT2 : '/*' .*? '*/' -> skip;

fragment LETTER : [a-zA-Z_];
fragment DIGIT  : [0-9];


WS  : [ \t\r\n]+ -> skip;
