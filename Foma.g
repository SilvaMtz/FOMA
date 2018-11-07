//Patricio Forbes A01192455
//David Martinez A00817107
grammar Foma;

options { language = Ruby; }

@header {
}

@members {
}

// ******************************************************************************
// ****************                    LEXER                     ****************
// ******************************************************************************

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// RESERVED WORDS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

//TYPES
INTEGER: 'int';
FLOAT: 'float';
CHAR: 'char';
BOOL: 'bool';
VOID: 'void';
NULL: 'null';

//CONDITIONALS
IF: 'if';
ELSE: 'else';

//LOGICAL OPERATORS
AND: 'and';
OR: 'or';

//LOOPS
WHILE: 'while';
FOR: 'for';

//IO
INPUT: 'input';
PRINT: 'print';

//PROGRAM
PROGRAM: 'program';
FUNCTION: 'function';
RETURN: 'return';

//LANGUAGE SPECIFICS
CLASS: 'class';
INHER: 'inherits';
START: 'start';
R_END: 'end';
NEW: 'new';


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// OPERATORS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

//ASSIGNMENT
ASSIGN: '=';

//EXPRESSION
GT: '>';
GEQ: '>=';
LT: '<';
LEQ: '<=';
EQ: '==';
NE: '<>';

//EXP
ADD: '+';
SUB: '-';

//TERM
MULT: '*';
DIV: '/';
MOD: '%';


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// TYPES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

//TYPE_S
C_INT: ('0' .. '9')+;
C_FLOAT: ('0' .. '9')+ '.' ('0' .. '9')+;
C_BOOL: ( 'true' | 'false');
C_CHAR: '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\'' | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"'; //NO ME GUSTA

//ID
ID: ( 'a' .. 'z' | 'A' .. 'Z' ) ( ( 'a' .. 'z' | 'A' .. 'Z' ) | '_' | ('0' .. '9') )*;


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// CHARACTERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

COLON: ':';
SEMICOLON: ';';
COMMA: ',';
POINT: '.';


RP: ')';
LP: '(';
LB: '[';
RB: ']';

//LAS PUSE PORQUE ESTAN EN LA LISTA DE TOKENS PERO CREO QUE NO LAS OCUPAMOS.
RBRACE: '}';
LBRACE: '{';



// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// SPECIAL CHARACTERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// NOTA "{ $channel = HIDDEN }" ES PARTE  DE ANTLER PARA IGNORAR EL TOKEN
WHITESPACE: ( '\t' | '\f' | ' ' | '\u00A0' )+ { $channel = HIDDEN };
NEWLINE: ( '\n' | '\r' )+ { $channel = HIDDEN };


// ******************************************************************************
// ****************                   PARSER                     ****************
// ******************************************************************************

commence
  : ( r_class )* (variables)* (function)* program
  ;
  finally { exit }

r_class
  : CLASS ID ( INHER ID )? START ( attributes )* ( constructor )+ ( method )* R_END
  ;

function
  : FUNCTION type_f ID LP (parameters (COMMA parameters)*)? RP START ( variables | estatutes_f )* R_END
  ;

method
  : type_f ID LP (parameters (COMMA parameters)*)? RP START ( variables | estatutes_f )* R_END
  ;

constructor
  : ID LP (parameters (COMMA parameters)*)? RP START ( variables | estatutes_f )* R_END
  ;

program
  : PROGRAM ID START ( variables | estatutes )* R_END
  ;

variables
  : type_c ID ( COMMA ID )* SEMICOLON
  ;

attributes
  : type_s ID ( COMMA ID )* SEMICOLON
  ;

parameters
  : type_s ID
  ;

type_s
  : (INTEGER | FLOAT | CHAR | BOOL)
  ;

type_c
  : (type_s | OBJ)
  ;

type_f
  : (type_s | VOID)
  ;

block
  : START estatutes* R_END
  ;

super_expression
  : expression ((AND | OR) expression)*
  ;

expression
  : exp ((LT | LEQ | GT | GEQ | EQ | NE) exp)*
  ;

exp
  : term ((ADD | SUB) term)*
  ;

term
  : factor ( ( MULT | DIV | MOD ) factor )*
  ;

factor
  : (LP super_expression RP | var_cte | func_call | method_call)
  ;

var_cte
  : (id | C_INT | C_FLOAT | C_CHAR | C_BOOL)
  ;

id
  : ID
  ;

estatutes
  : (assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
  ;

estatutes_f
  : (estatutes | return)
  ;

assign
  : id ASSIGN super_expression
  ;

condition
  : IF LP super_expression RP block (ELSE block)?
  ;

while_loop
  : WHILE LP super_expression RP block
  ;

for_loop
  : FOR LP assign? SEMICOLON super_expression SEMICOLON assign? RP block
  ;

print
  : PRINT LP (super_expression ( COMMA super_expression)* ) RP SEMICOLON
  ;

input
  : INPUT LP id RP SEMICOLON
  ;

func_call
  : ID LP (ID (COMMA ID)*)? RP
  ;

method_call
  : ID POINT LP (ID (COMMA ID)*)? RP
  ;

return
 : RETURN super_expression SEMICOLON
 ;
