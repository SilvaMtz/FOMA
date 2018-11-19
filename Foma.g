//Patricio Forbes A01192455
//David Martinez A00817107
grammar Foma;

options { language = Ruby; }

@header {
  require "Clases/Program"
  require "Clases/CuadruplosTable"
}

@members {
  \$program = Program.new()
  \$cuads = CuadruplosTable.new()
  \$params = 0
  \$classId
  \$scope
  \$varId
  \$varType
  \$dimTemp
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
  : {\$scope = "class"}( r_class  )* {\$scope = "global"} (variables)* {\$program.add_func("global", "void", 0)} (function)* program  {\$cuads.display}{puts "EXITS"}
  ;
  finally { exit }

r_class
  : CLASS ID {\$classId = $ID.text}  inherits? START  ( attributes )* {\$program.add_attrs()}  constructor  ( method )* {\$program.add_class(\$classId)}  R_END
  ;

inherits
  :( INHER ID )
  ;

function
  : FUNCTION  type_f ID {\$scope = $ID.text}  parameters START (attributes)* {\$program.add_func($ID.text, $type_f.text, \$params)}{\$params = 0}(estatutes_f)* R_END
  ;

method
  : type_f ID parameters START (attributes)*  {\$program.add_func($ID.text, $type_f.text, \$params)}{\$params = 0}  (estatutes_f)*  R_END
  ;

constructor
  :  ID parameters  START (attributes)* (estatutes)* {\$program.add_func($ID.text, "CONST", \$params)}{\$params = 0} R_END
  ;

program
  : PROGRAM ID START (attributes)* {\$program.add_func($ID.text, "void", 0)} (estatutes)* R_END
  ;

variables
  : (dec_var | dec_arr | dec_mat)
  ;

dec_var
  : type_c {\$varType = $type_c.text} ID {\$program.add_var($ID.text, \$varType, \$scope)} dec_var_2* SEMICOLON
  ;

dec_var_2
  : COMMA ID {\$program.add_var($ID.text, \$varType, \$scope)}
  ;

dec_arr
  : type_s ID LB C_INT RB SEMICOLON {\$program.add_dim($ID.text, $type_s.text, $C_INT.text, 0)}
  ;

dec_mat
  : type_s ID LB C_INT RB  dim_2 SEMICOLON {\$program.add_dim($ID.text, $type_s.text, $C_INT.text, \$dimTemp)}
  ;

dim_2
  : LB C_INT RB {\$dimTemp = $C_INT.text}
  ;

attributes
  : type_s {\$varType = $type_s.text} ID {\$program.add_var($ID.text, \$varType, \$scope)} attributes_2*  SEMICOLON
  ;

attributes_2
  : COMMA ID {\$program.add_var($ID.text, \$varType, \$scope)}
  ;

parameters
  : LP (type_s ID {\$program.add_var($ID.text, $type_s.text, \$scope)}{\$params += 1}( parameters_2 )*)? RP
  ;

parameters_2
  :  COMMA type_s ID {\$program.add_var($ID.text, $type_s.text, \$scope)}{\$params += 1}
  ;

type_s
  : (INTEGER | FLOAT | CHAR | BOOL)
  ;

type_c
  : (type_s | ID)
  ;

type_f
  : (type_s | VOID)
  ;

block
  : START estatutes* R_END
  ;

super_expression
  : expression ((AND {\$cuads.add_SE($AND.text)}| OR {\$cuads.add_SE($OR.text)}) expression)*
  ;

expression
  : exp ((LT {\$cuads.add_E($LT.text)} | LEQ {\$cuads.add_E($LEQ.text)} | GT {\$cuads.add_E($GT.text)} | GEQ {\$cuads.add_E($GEQ.text)} | EQ {\$cuads.add_E($EQ.text)} | NE {\$cuads.add_E($NE.text)} ) exp)*
  ;

exp
  : term ((ADD {\$cuads.add_EXP($ADD.text)} | SUB {\$cuads.add_EXP($SUB.text)}) term)*
  ;

term
  : factor ( ( MULT {\$cuads.add_T($MULT.text)} | DIV {\$cuads.add_T($DIV.text)}| MOD {\$cuads.add_T($MOD.text)} ) factor )*
  ;

factor
  : (LP super_expression RP | var_cte {\$cuads.add_operando($var_cte.text)}  | func_call | method_call)
  ;

var_cte
  : (var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL)
  ;

var_access
  : ID (LB {\$cuads.add_falseBottom}  exp  {\$cuads.rem_falseBottom}{\$cuads.drop_opp}RB (LB {\$cuads.add_falseBottom}  exp  {\$cuads.rem_falseBottom} {\$cuads.drop_opp}RB)?)?
  ;

estatutes
  : (assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
  ;

estatutes_f
  : (estatutes | r_return)
  ;

assign
  : var_access {\$cuads.add_operando($var_access.text)} ASSIGN {\$cuads.add_assign()} super_expression {\$cuads.emptyStack}
  ;

condition
  : IF LP {\$cuads.add_falseBottom} super_expression {\$cuads.rem_falseBottom} {\$cuads.goto_falso}RP block (ELSE {\$cuads.goto_else}  block)? {\$cuads.fill_goto}
  ;

while_loop
  : WHILE LP {\$cuads.save_spot}{\$cuads.add_falseBottom} super_expression {\$cuads.rem_falseBottom} {\$cuads.goto_falso}RP block {\$cuads.goto_loop}
  ;

for_loop
  : FOR LP assign? SEMICOLON {\$cuads.save_spot}{\$cuads.add_falseBottom} super_expression {\$cuads.rem_falseBottom} {\$cuads.goto_falso} SEMICOLON{\$cuads.add_swap} assign? {\$cuads.add_swap} RP block {\$cuads.do_swap}{\$cuads.goto_loop}
  ;

print
  : PRINT LP (super_expression ( COMMA super_expression)* ) RP SEMICOLON
  ;

input
  : INPUT LP ID RP SEMICOLON
  ;

func_call
  : ID LP (ID (COMMA ID)*)? RP
  ;

method_call
  : ID POINT LP (ID (COMMA ID)*)? RP
  ;

r_return
 : RETURN super_expression SEMICOLON
 ;
