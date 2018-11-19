#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-19 15:07:43
#

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!

Failed to load the ANTLR3 runtime library (version 1.10.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:

  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin

  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'

rescue LoadError

  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end

  # 3: try to activate the antlr3 gem
  begin
    defined?( gem ) and gem( 'antlr3', '~> 1.10.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end

  require 'antlr3'

end
# <~~~ end load path setup

module Foma
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EOF => -1, :ADD => 4, :AND => 5, :ASSIGN => 6, :BOOL => 7, 
                   :CHAR => 8, :CLASS => 9, :COLON => 10, :COMMA => 11, 
                   :C_BOOL => 12, :C_CHAR => 13, :C_FLOAT => 14, :C_INT => 15, 
                   :DIV => 16, :ELSE => 17, :EQ => 18, :FLOAT => 19, :FOR => 20, 
                   :FUNCTION => 21, :GEQ => 22, :GT => 23, :ID => 24, :IF => 25, 
                   :INHER => 26, :INPUT => 27, :INTEGER => 28, :LB => 29, 
                   :LBRACE => 30, :LEQ => 31, :LP => 32, :LT => 33, :MOD => 34, 
                   :MULT => 35, :NE => 36, :NEW => 37, :NEWLINE => 38, :NULL => 39, 
                   :OR => 40, :POINT => 41, :PRINT => 42, :PROGRAM => 43, 
                   :RB => 44, :RBRACE => 45, :RETURN => 46, :RP => 47, :R_END => 48, 
                   :SEMICOLON => 49, :START => 50, :SUB => 51, :VOID => 52, 
                   :WHILE => 53, :WHITESPACE => 54 )

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Foma
    include TokenData

    begin
      generated_using( "Foma.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "INTEGER", "FLOAT", "CHAR", "BOOL", "VOID", "NULL", 
                     "IF", "ELSE", "AND", "OR", "WHILE", "FOR", "INPUT", 
                     "PRINT", "PROGRAM", "FUNCTION", "RETURN", "CLASS", 
                     "INHER", "START", "R_END", "NEW", "ASSIGN", "GT", "GEQ", 
                     "LT", "LEQ", "EQ", "NE", "ADD", "SUB", "MULT", "DIV", 
                     "MOD", "C_INT", "C_FLOAT", "C_BOOL", "C_CHAR", "ID", 
                     "COLON", "SEMICOLON", "COMMA", "POINT", "RP", "LP", 
                     "LB", "RB", "RBRACE", "LBRACE", "WHITESPACE", "NEWLINE" ].freeze
    RULE_METHODS = [ :integer!, :float!, :char!, :bool!, :void!, :null!, 
                     :if!, :else!, :and!, :or!, :while!, :for!, :input!, 
                     :print!, :program!, :function!, :return!, :class!, 
                     :inher!, :start!, :r_end!, :new!, :assign!, :gt!, :geq!, 
                     :lt!, :leq!, :eq!, :ne!, :add!, :sub!, :mult!, :div!, 
                     :mod!, :c_int!, :c_float!, :c_bool!, :c_char!, :id!, 
                     :colon!, :semicolon!, :comma!, :point!, :rp!, :lp!, 
                     :lb!, :rb!, :rbrace!, :lbrace!, :whitespace!, :newline! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule integer! (INTEGER)
    # (in Foma.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 33:10: 'int'
      match( "int" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule float! (FLOAT)
    # (in Foma.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 34:8: 'float'
      match( "float" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule char! (CHAR)
    # (in Foma.g)
    def char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = CHAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 35:7: 'char'
      match( "char" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule bool! (BOOL)
    # (in Foma.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 36:7: 'bool'
      match( "bool" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule void! (VOID)
    # (in Foma.g)
    def void!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = VOID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 37:7: 'void'
      match( "void" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule null! (NULL)
    # (in Foma.g)
    def null!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = NULL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 38:7: 'null'
      match( "null" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule if! (IF)
    # (in Foma.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 41:5: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule else! (ELSE)
    # (in Foma.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 42:7: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule and! (AND)
    # (in Foma.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 45:6: 'and'
      match( "and" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule or! (OR)
    # (in Foma.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 46:5: 'or'
      match( "or" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule while! (WHILE)
    # (in Foma.g)
    def while!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = WHILE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 49:8: 'while'
      match( "while" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule for! (FOR)
    # (in Foma.g)
    def for!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = FOR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 50:6: 'for'
      match( "for" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule input! (INPUT)
    # (in Foma.g)
    def input!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = INPUT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 53:8: 'input'
      match( "input" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule print! (PRINT)
    # (in Foma.g)
    def print!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = PRINT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 54:8: 'print'
      match( "print" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule program! (PROGRAM)
    # (in Foma.g)
    def program!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = PROGRAM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 57:10: 'program'
      match( "program" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule function! (FUNCTION)
    # (in Foma.g)
    def function!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = FUNCTION
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 58:11: 'function'
      match( "function" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule return! (RETURN)
    # (in Foma.g)
    def return!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = RETURN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 59:9: 'return'
      match( "return" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule class! (CLASS)
    # (in Foma.g)
    def class!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = CLASS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 62:8: 'class'
      match( "class" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule inher! (INHER)
    # (in Foma.g)
    def inher!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = INHER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 63:8: 'inherits'
      match( "inherits" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule start! (START)
    # (in Foma.g)
    def start!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = START
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 64:8: 'start'
      match( "start" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule r_end! (R_END)
    # (in Foma.g)
    def r_end!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = R_END
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 65:8: 'end'
      match( "end" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule new! (NEW)
    # (in Foma.g)
    def new!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = NEW
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 66:6: 'new'
      match( "new" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule assign! (ASSIGN)
    # (in Foma.g)
    def assign!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = ASSIGN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 74:9: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule gt! (GT)
    # (in Foma.g)
    def gt!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = GT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 77:5: '>'
      match( 0x3e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule geq! (GEQ)
    # (in Foma.g)
    def geq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = GEQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 78:6: '>='
      match( ">=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule lt! (LT)
    # (in Foma.g)
    def lt!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = LT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 79:5: '<'
      match( 0x3c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )


    end

    # lexer rule leq! (LEQ)
    # (in Foma.g)
    def leq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = LEQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 80:6: '<='
      match( "<=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule eq! (EQ)
    # (in Foma.g)
    def eq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = EQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 81:5: '=='
      match( "==" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule ne! (NE)
    # (in Foma.g)
    def ne!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = NE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 82:5: '<>'
      match( "<>" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )


    end

    # lexer rule add! (ADD)
    # (in Foma.g)
    def add!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = ADD
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 85:6: '+'
      match( 0x2b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule sub! (SUB)
    # (in Foma.g)
    def sub!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = SUB
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 86:6: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule mult! (MULT)
    # (in Foma.g)
    def mult!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = MULT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 89:7: '*'
      match( 0x2a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule div! (DIV)
    # (in Foma.g)
    def div!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = DIV
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 90:6: '/'
      match( 0x2f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule mod! (MOD)
    # (in Foma.g)
    def mod!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = MOD
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 91:6: '%'
      match( 0x25 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule c_int! (C_INT)
    # (in Foma.g)
    def c_int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = C_INT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 99:8: ( '0' .. '9' )+
      # at file 99:8: ( '0' .. '9' )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule c_float! (C_FLOAT)
    # (in Foma.g)
    def c_float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = C_FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 100:10: ( '0' .. '9' )+ '.' ( '0' .. '9' )+
      # at file 100:10: ( '0' .. '9' )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x30, 0x39 ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      match( 0x2e )
      # at file 100:28: ( '0' .. '9' )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x30, 0x39 ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule c_bool! (C_BOOL)
    # (in Foma.g)
    def c_bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = C_BOOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 101:9: ( 'true' | 'false' )
      # at line 101:9: ( 'true' | 'false' )
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == 0x74 )
        alt_4 = 1
      elsif ( look_4_0 == 0x66 )
        alt_4 = 2
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 101:11: 'true'
        match( "true" )


      when 2
        # at line 101:20: 'false'
        match( "false" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )


    end

    # lexer rule c_char! (C_CHAR)
    # (in Foma.g)
    def c_char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = C_CHAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 102:7: ( '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' )
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == 0x27 )
        alt_7 = 1
      elsif ( look_7_0 == 0x22 )
        alt_7 = 2
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 102:9: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
        match( 0x27 )
        # at line 102:14: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
        while true # decision 5
          alt_5 = 3
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( 0x0, 0x26 ) || look_5_0.between?( 0x28, 0x5b ) || look_5_0.between?( 0x5d, 0xffff ) )
            alt_5 = 1
          elsif ( look_5_0 == 0x5c )
            alt_5 = 2

          end
          case alt_5
          when 1
            # at line 102:16: ~ ( '\\'' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          when 2
            # at line 102:35: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5

        match( 0x27 )

      when 2
        # at line 102:52: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
        match( 0x22 )
        # at line 102:57: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
        while true # decision 6
          alt_6 = 3
          look_6_0 = @input.peek( 1 )

          if ( look_6_0.between?( 0x0, 0x21 ) || look_6_0.between?( 0x23, 0x5b ) || look_6_0.between?( 0x5d, 0xffff ) )
            alt_6 = 1
          elsif ( look_6_0 == 0x5c )
            alt_6 = 2

          end
          case alt_6
          when 1
            # at line 102:59: ~ ( '\"' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          when 2
            # at line 102:78: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 6
          end
        end # loop for decision 6

        match( 0x22 )

      end

      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # lexer rule id! (ID)
    # (in Foma.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )



      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 105:5: ( 'a' .. 'z' | 'A' .. 'Z' ) ( ( 'a' .. 'z' | 'A' .. 'Z' ) | '_' | ( '0' .. '9' ) )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 105:33: ( ( 'a' .. 'z' | 'A' .. 'Z' ) | '_' | ( '0' .. '9' ) )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0.between?( 0x30, 0x39 ) || look_8_0.between?( 0x41, 0x5a ) || look_8_0 == 0x5f || look_8_0.between?( 0x61, 0x7a ) )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 8
        end
      end # loop for decision 8



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )


    end

    # lexer rule colon! (COLON)
    # (in Foma.g)
    def colon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )



      type = COLON
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 112:8: ':'
      match( 0x3a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )


    end

    # lexer rule semicolon! (SEMICOLON)
    # (in Foma.g)
    def semicolon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )



      type = SEMICOLON
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 113:12: ';'
      match( 0x3b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )


    end

    # lexer rule comma! (COMMA)
    # (in Foma.g)
    def comma!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )



      type = COMMA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 114:8: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )


    end

    # lexer rule point! (POINT)
    # (in Foma.g)
    def point!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )



      type = POINT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 115:8: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )


    end

    # lexer rule rp! (RP)
    # (in Foma.g)
    def rp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )



      type = RP
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 118:5: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )


    end

    # lexer rule lp! (LP)
    # (in Foma.g)
    def lp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )



      type = LP
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 119:5: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )


    end

    # lexer rule lb! (LB)
    # (in Foma.g)
    def lb!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )



      type = LB
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 120:5: '['
      match( 0x5b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )


    end

    # lexer rule rb! (RB)
    # (in Foma.g)
    def rb!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )



      type = RB
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 121:5: ']'
      match( 0x5d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )


    end

    # lexer rule rbrace! (RBRACE)
    # (in Foma.g)
    def rbrace!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )



      type = RBRACE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 124:9: '}'
      match( 0x7d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )


    end

    # lexer rule lbrace! (LBRACE)
    # (in Foma.g)
    def lbrace!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )



      type = LBRACE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 125:9: '{'
      match( 0x7b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 49 )


    end

    # lexer rule whitespace! (WHITESPACE)
    # (in Foma.g)
    def whitespace!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )



      type = WHITESPACE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 134:13: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      # at file 134:13: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      match_count_9 = 0
      while true
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == 0x9 || look_9_0 == 0xc || look_9_0 == 0x20 || look_9_0 == 0xa0 )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0xc || @input.peek(1) == 0x20 || @input.peek(1) == 0xa0
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_9 > 0 and break
          eee = EarlyExit(9)


          raise eee
        end
        match_count_9 += 1
      end



      # --> action
       channel = HIDDEN 
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 50 )


    end

    # lexer rule newline! (NEWLINE)
    # (in Foma.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )



      type = NEWLINE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 135:10: ( '\\n' | '\\r' )+
      # at file 135:10: ( '\\n' | '\\r' )+
      match_count_10 = 0
      while true
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == 0xa || look_10_0 == 0xd )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 
          if @input.peek(1) == 0xa || @input.peek(1) == 0xd
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_10 > 0 and break
          eee = EarlyExit(10)


          raise eee
        end
        match_count_10 += 1
      end



      # --> action
       channel = HIDDEN 
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 51 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( INTEGER | FLOAT | CHAR | BOOL | VOID | NULL | IF | ELSE | AND | OR | WHILE | FOR | INPUT | PRINT | PROGRAM | FUNCTION | RETURN | CLASS | INHER | START | R_END | NEW | ASSIGN | GT | GEQ | LT | LEQ | EQ | NE | ADD | SUB | MULT | DIV | MOD | C_INT | C_FLOAT | C_BOOL | C_CHAR | ID | COLON | SEMICOLON | COMMA | POINT | RP | LP | LB | RB | RBRACE | LBRACE | WHITESPACE | NEWLINE )
      alt_11 = 51
      alt_11 = @dfa11.predict( @input )
      case alt_11
      when 1
        # at line 1:10: INTEGER
        integer!


      when 2
        # at line 1:18: FLOAT
        float!


      when 3
        # at line 1:24: CHAR
        char!


      when 4
        # at line 1:29: BOOL
        bool!


      when 5
        # at line 1:34: VOID
        void!


      when 6
        # at line 1:39: NULL
        null!


      when 7
        # at line 1:44: IF
        if!


      when 8
        # at line 1:47: ELSE
        else!


      when 9
        # at line 1:52: AND
        and!


      when 10
        # at line 1:56: OR
        or!


      when 11
        # at line 1:59: WHILE
        while!


      when 12
        # at line 1:65: FOR
        for!


      when 13
        # at line 1:69: INPUT
        input!


      when 14
        # at line 1:75: PRINT
        print!


      when 15
        # at line 1:81: PROGRAM
        program!


      when 16
        # at line 1:89: FUNCTION
        function!


      when 17
        # at line 1:98: RETURN
        return!


      when 18
        # at line 1:105: CLASS
        class!


      when 19
        # at line 1:111: INHER
        inher!


      when 20
        # at line 1:117: START
        start!


      when 21
        # at line 1:123: R_END
        r_end!


      when 22
        # at line 1:129: NEW
        new!


      when 23
        # at line 1:133: ASSIGN
        assign!


      when 24
        # at line 1:140: GT
        gt!


      when 25
        # at line 1:143: GEQ
        geq!


      when 26
        # at line 1:147: LT
        lt!


      when 27
        # at line 1:150: LEQ
        leq!


      when 28
        # at line 1:154: EQ
        eq!


      when 29
        # at line 1:157: NE
        ne!


      when 30
        # at line 1:160: ADD
        add!


      when 31
        # at line 1:164: SUB
        sub!


      when 32
        # at line 1:168: MULT
        mult!


      when 33
        # at line 1:173: DIV
        div!


      when 34
        # at line 1:177: MOD
        mod!


      when 35
        # at line 1:181: C_INT
        c_int!


      when 36
        # at line 1:187: C_FLOAT
        c_float!


      when 37
        # at line 1:195: C_BOOL
        c_bool!


      when 38
        # at line 1:202: C_CHAR
        c_char!


      when 39
        # at line 1:209: ID
        id!


      when 40
        # at line 1:212: COLON
        colon!


      when 41
        # at line 1:218: SEMICOLON
        semicolon!


      when 42
        # at line 1:228: COMMA
        comma!


      when 43
        # at line 1:234: POINT
        point!


      when 44
        # at line 1:240: RP
        rp!


      when 45
        # at line 1:243: LP
        lp!


      when 46
        # at line 1:246: LB
        lb!


      when 47
        # at line 1:249: RB
        rb!


      when 48
        # at line 1:252: RBRACE
        rbrace!


      when 49
        # at line 1:259: LBRACE
        lbrace!


      when 50
        # at line 1:266: WHITESPACE
        whitespace!


      when 51
        # at line 1:277: NEWLINE
        newline!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA11 < ANTLR3::DFA
      EOT = unpack( 1, -1, 13, 25, 1, 59, 1, 61, 1, 64, 5, -1, 1, 65, 1, 
                    25, 14, -1, 1, 25, 1, 71, 13, 25, 1, 85, 4, 25, 9, -1, 
                    1, 25, 1, 92, 2, 25, 1, -1, 1, 25, 1, 96, 7, 25, 1, 
                    104, 1, 25, 1, 106, 1, 107, 1, -1, 6, 25, 1, -1, 3, 
                    25, 1, -1, 2, 25, 1, 119, 1, 25, 1, 121, 1, 122, 1, 
                    123, 1, -1, 1, 124, 2, -1, 5, 25, 1, 130, 1, 131, 1, 
                    25, 1, 133, 1, 25, 1, 130, 1, -1, 1, 135, 4, -1, 1, 
                    136, 1, 137, 2, 25, 1, 140, 2, -1, 1, 25, 1, -1, 1, 
                    25, 3, -1, 1, 25, 1, 144, 1, -1, 2, 25, 1, 147, 1, -1, 
                    1, 148, 1, 149, 3, -1 )
      EOF = unpack( 150, -1 )
      MIN = unpack( 1, 9, 1, 102, 1, 97, 1, 104, 2, 111, 1, 101, 1, 108, 
                    1, 110, 1, 114, 1, 104, 1, 114, 1, 101, 1, 116, 3, 61, 
                    5, -1, 1, 46, 1, 114, 14, -1, 1, 104, 1, 48, 1, 111, 
                    1, 114, 1, 110, 1, 108, 2, 97, 1, 111, 1, 105, 1, 108, 
                    1, 119, 1, 115, 2, 100, 1, 48, 2, 105, 1, 116, 1, 97, 
                    9, -1, 1, 117, 1, 48, 1, 117, 1, 101, 1, -1, 1, 97, 
                    1, 48, 1, 99, 1, 115, 1, 114, 1, 115, 1, 108, 1, 100, 
                    1, 108, 1, 48, 1, 101, 2, 48, 1, -1, 1, 108, 1, 110, 
                    1, 103, 1, 117, 1, 114, 1, 101, 1, -1, 1, 116, 1, 114, 
                    1, 116, 1, -1, 1, 116, 1, 101, 1, 48, 1, 115, 3, 48, 
                    1, -1, 1, 48, 2, -1, 1, 101, 1, 116, 2, 114, 1, 116, 
                    2, 48, 1, 105, 1, 48, 1, 105, 1, 48, 1, -1, 1, 48, 4, 
                    -1, 2, 48, 1, 97, 1, 110, 1, 48, 2, -1, 1, 116, 1, -1, 
                    1, 111, 3, -1, 1, 109, 1, 48, 1, -1, 1, 115, 1, 110, 
                    1, 48, 1, -1, 2, 48, 3, -1 )
      MAX = unpack( 1, 160, 1, 110, 1, 117, 1, 108, 2, 111, 1, 117, 2, 110, 
                    1, 114, 1, 104, 1, 114, 1, 101, 1, 116, 2, 61, 1, 62, 
                    5, -1, 1, 57, 1, 114, 14, -1, 1, 116, 1, 122, 1, 111, 
                    1, 114, 1, 110, 1, 108, 2, 97, 1, 111, 1, 105, 1, 108, 
                    1, 119, 1, 115, 2, 100, 1, 122, 1, 105, 1, 111, 1, 116, 
                    1, 97, 9, -1, 1, 117, 1, 122, 1, 117, 1, 101, 1, -1, 
                    1, 97, 1, 122, 1, 99, 1, 115, 1, 114, 1, 115, 1, 108, 
                    1, 100, 1, 108, 1, 122, 1, 101, 2, 122, 1, -1, 1, 108, 
                    1, 110, 1, 103, 1, 117, 1, 114, 1, 101, 1, -1, 1, 116, 
                    1, 114, 1, 116, 1, -1, 1, 116, 1, 101, 1, 122, 1, 115, 
                    3, 122, 1, -1, 1, 122, 2, -1, 1, 101, 1, 116, 2, 114, 
                    1, 116, 2, 122, 1, 105, 1, 122, 1, 105, 1, 122, 1, -1, 
                    1, 122, 4, -1, 2, 122, 1, 97, 1, 110, 1, 122, 2, -1, 
                    1, 116, 1, -1, 1, 111, 3, -1, 1, 109, 1, 122, 1, -1, 
                    1, 115, 1, 110, 1, 122, 1, -1, 2, 122, 3, -1 )
      ACCEPT = unpack( 17, -1, 1, 30, 1, 31, 1, 32, 1, 33, 1, 34, 2, -1, 
                       1, 38, 1, 39, 1, 40, 1, 41, 1, 42, 1, 43, 1, 44, 
                       1, 45, 1, 46, 1, 47, 1, 48, 1, 49, 1, 50, 1, 51, 
                       20, -1, 1, 28, 1, 23, 1, 25, 1, 24, 1, 27, 1, 29, 
                       1, 26, 1, 35, 1, 36, 4, -1, 1, 7, 13, -1, 1, 10, 
                       6, -1, 1, 1, 3, -1, 1, 12, 7, -1, 1, 22, 1, -1, 1, 
                       21, 1, 9, 11, -1, 1, 3, 1, -1, 1, 4, 1, 5, 1, 6, 
                       1, 8, 5, -1, 1, 37, 1, 13, 1, -1, 1, 2, 1, -1, 1, 
                       18, 1, 11, 1, 14, 2, -1, 1, 20, 3, -1, 1, 17, 2, 
                       -1, 1, 15, 1, 19, 1, 16 )
      SPECIAL = unpack( 150, -1 )
      TRANSITION = [
        unpack( 1, 36, 1, 37, 1, -1, 1, 36, 1, 37, 18, -1, 1, 36, 1, -1, 
                1, 24, 2, -1, 1, 21, 1, -1, 1, 24, 1, 31, 1, 30, 1, 19, 
                1, 17, 1, 28, 1, 18, 1, 29, 1, 20, 10, 22, 1, 26, 1, 27, 
                1, 16, 1, 14, 1, 15, 2, -1, 26, 25, 1, 32, 1, -1, 1, 33, 
                3, -1, 1, 8, 1, 4, 1, 3, 1, 25, 1, 7, 1, 2, 2, 25, 1, 1, 
                4, 25, 1, 6, 1, 9, 1, 11, 1, 25, 1, 12, 1, 13, 1, 23, 1, 
                25, 1, 5, 1, 10, 3, 25, 1, 35, 1, -1, 1, 34, 34, -1, 1, 
                36 ),
        unpack( 1, 39, 7, -1, 1, 38 ),
        unpack( 1, 43, 10, -1, 1, 40, 2, -1, 1, 41, 5, -1, 1, 42 ),
        unpack( 1, 44, 3, -1, 1, 45 ),
        unpack( 1, 46 ),
        unpack( 1, 47 ),
        unpack( 1, 49, 15, -1, 1, 48 ),
        unpack( 1, 50, 1, -1, 1, 51 ),
        unpack( 1, 52 ),
        unpack( 1, 53 ),
        unpack( 1, 54 ),
        unpack( 1, 55 ),
        unpack( 1, 56 ),
        unpack( 1, 57 ),
        unpack( 1, 58 ),
        unpack( 1, 60 ),
        unpack( 1, 62, 1, 63 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 66, 1, -1, 10, 22 ),
        unpack( 1, 67 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 70, 7, -1, 1, 69, 3, -1, 1, 68 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 72 ),
        unpack( 1, 73 ),
        unpack( 1, 74 ),
        unpack( 1, 75 ),
        unpack( 1, 76 ),
        unpack( 1, 77 ),
        unpack( 1, 78 ),
        unpack( 1, 79 ),
        unpack( 1, 80 ),
        unpack( 1, 81 ),
        unpack( 1, 82 ),
        unpack( 1, 83 ),
        unpack( 1, 84 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 86 ),
        unpack( 1, 87, 5, -1, 1, 88 ),
        unpack( 1, 89 ),
        unpack( 1, 90 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 91 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 93 ),
        unpack( 1, 94 ),
        unpack(  ),
        unpack( 1, 95 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 97 ),
        unpack( 1, 98 ),
        unpack( 1, 99 ),
        unpack( 1, 100 ),
        unpack( 1, 101 ),
        unpack( 1, 102 ),
        unpack( 1, 103 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 105 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 1, 108 ),
        unpack( 1, 109 ),
        unpack( 1, 110 ),
        unpack( 1, 111 ),
        unpack( 1, 112 ),
        unpack( 1, 113 ),
        unpack(  ),
        unpack( 1, 114 ),
        unpack( 1, 115 ),
        unpack( 1, 116 ),
        unpack(  ),
        unpack( 1, 117 ),
        unpack( 1, 118 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 120 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 125 ),
        unpack( 1, 126 ),
        unpack( 1, 127 ),
        unpack( 1, 128 ),
        unpack( 1, 129 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 132 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 134 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 138 ),
        unpack( 1, 139 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 141 ),
        unpack(  ),
        unpack( 1, 142 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 143 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 1, 145 ),
        unpack( 1, 146 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 11


      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( INTEGER | FLOAT | CHAR | BOOL | VOID | NULL | IF | ELSE | AND | OR | WHILE | FOR | INPUT | PRINT | PROGRAM | FUNCTION | RETURN | CLASS | INHER | START | R_END | NEW | ASSIGN | GT | GEQ | LT | LEQ | EQ | NE | ADD | SUB | MULT | DIV | MOD | C_INT | C_FLOAT | C_BOOL | C_CHAR | ID | COLON | SEMICOLON | COMMA | POINT | RP | LP | LB | RB | RBRACE | LBRACE | WHITESPACE | NEWLINE );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa11 = DFA11.new( self, 11 )


    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
