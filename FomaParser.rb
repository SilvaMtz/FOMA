#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-22 08:27:48
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

# - - - - - - begin action @parser::header - - - - - -
# Foma.g


  require "Clases/Program"
  require "Clases/CuadruplosTable"
  require "Clases/VM"

# - - - - - - end action @parser::header - - - - - - -


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
                   :MULT => 35, :NE => 36, :NEWLINE => 37, :NULL => 38, 
                   :OR => 39, :POINT => 40, :PRINT => 41, :PROGRAM => 42, 
                   :RB => 43, :RBRACE => 44, :RETURN => 45, :RP => 46, :R_END => 47, 
                   :R_NEW => 48, :R_THIS => 49, :SEMICOLON => 50, :START => 51, 
                   :SUB => 52, :VOID => 53, :WHILE => 54, :WHITESPACE => 55 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "ADD", "AND", "ASSIGN", "BOOL", "CHAR", "CLASS", "COLON", 
                    "COMMA", "C_BOOL", "C_CHAR", "C_FLOAT", "C_INT", "DIV", 
                    "ELSE", "EQ", "FLOAT", "FOR", "FUNCTION", "GEQ", "GT", 
                    "ID", "IF", "INHER", "INPUT", "INTEGER", "LB", "LBRACE", 
                    "LEQ", "LP", "LT", "MOD", "MULT", "NE", "NEWLINE", "NULL", 
                    "OR", "POINT", "PRINT", "PROGRAM", "RB", "RBRACE", "RETURN", 
                    "RP", "R_END", "R_NEW", "R_THIS", "SEMICOLON", "START", 
                    "SUB", "VOID", "WHILE", "WHITESPACE" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Foma

    RULE_METHODS = [ :commence, :r_class, :inherits, :function, :method, 
                     :constructor, :program, :variables, :dec_var, :dec_var_2, 
                     :dec_arr, :dec_mat, :dim_2, :attributes, :attributes_2, 
                     :parameters, :parameters_2, :type_s, :type_c, :type_f, 
                     :block, :super_expression, :expression, :exp, :term, 
                     :factor, :var_cte, :var_access, :dim_access, :obj_access, 
                     :estatutes, :assign, :condition, :while_loop, :for_loop, 
                     :print, :print_2, :input, :func_call, :call_params, 
                     :call_params2, :method_call, :method_call_2, :r_return ].freeze

    include TokenData

    begin
      generated_using( "Foma.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
    end


      $program = Program.new()
      $cuads = CuadruplosTable.new($program )
      $vm = VM.new($cuads, $program)

      $params = 0
      $classId
      $scope
      $funcId
      $varId
      $varType
      $dimTemp
      $numTemp
      $aux

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 151:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 153:5: ( r_class )* ( variables )* ( function )* program
      # --> action
      $cuads.goto_main
      # <-- action

      # at line 154:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 154:6: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_commence_600 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1


      # --> action
      $scope = "global"
      # <-- action

      # at line 155:26: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 155:27: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_commence_611 )
          variables
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2


      # --> action
      $program.add_func("global", "void", 0, "NA")
      # <-- action

      # at line 156:5: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 156:6: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_commence_622 )
          function
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      @state.following.push( TOKENS_FOLLOWING_program_IN_commence_630 )
      program
      @state.following.pop

      # --> action
      $cuads.end_prog
      # <-- action


      # --> action
      $cuads.display
      # <-- action


      # --> action
      puts "EXITS"
      # <-- action


      # --> action
      $vm.run
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

       exit 
      end

      return 
    end



    #
    # parser rule r_class
    #
    # (in Foma.g)
    # 163:1: r_class : CLASS ID ( inherits )? START ( attributes )* ( constructor )? ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 165:5: CLASS ID ( inherits )? START ( attributes )* ( constructor )? ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_667 )

      # --> action
      $scope = "global"
      # <-- action

      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_675 )

      # --> action
      $classId = __ID1__.text
      # <-- action

      # at line 167:5: ( inherits )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 167:5: inherits
        @state.following.push( TOKENS_FOLLOWING_inherits_IN_r_class_683 )
        inherits
        @state.following.pop

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_690 )
      # at line 169:5: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          look_5_2 = @input.peek( 2 )

          if ( look_5_2 == ID )
            look_5_3 = @input.peek( 3 )

            if ( look_5_3 == COMMA || look_5_3 == SEMICOLON )
              alt_5 = 1

            end

          end

        end
        case alt_5
        when 1
          # at line 169:6: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_697 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5


      # --> action
      $program.add_attrs()
      # <-- action

      # at line 171:5: ( constructor )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == ID )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 171:5: constructor
        @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_711 )
        constructor
        @state.following.pop

      end
      # at line 172:5: ( method )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER || look_7_0 == VOID )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 172:6: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_719 )
          method
          @state.following.pop

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7


      # --> action
      $program.add_class($classId)
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_733 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )


      end

      return 
    end



    #
    # parser rule inherits
    #
    # (in Foma.g)
    # 177:1: inherits : INHER ID ;
    #
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 179:5: INHER ID
      match( INHER, TOKENS_FOLLOWING_INHER_IN_inherits_750 )
      match( ID, TOKENS_FOLLOWING_ID_IN_inherits_756 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )


      end

      return 
    end



    #
    # parser rule function
    #
    # (in Foma.g)
    # 183:1: function : FUNCTION type_f ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID2__ = nil
      type_f3 = nil


      begin
      # at line 185:5: FUNCTION type_f ID parameters START ( attributes )* ( estatutes )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_773 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_779 )
      type_f3 = type_f
      @state.following.pop
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_785 )

      # --> action
      $scope = __ID2__.text
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_793 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_function_799 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 191:5: ( attributes )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0.between?( BOOL, CHAR ) || look_8_0 == FLOAT || look_8_0 == INTEGER )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 191:6: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_function_812 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8


      # --> action
      $program.add_func(__ID2__.text, ( type_f3 && @input.to_s( type_f3.start, type_f3.stop ) ), $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action


      # --> action
      puts "before"
      # <-- action

      # at line 195:5: ( estatutes )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == INPUT || look_9_0 == PRINT || look_9_0 == RETURN || look_9_0 == R_THIS || look_9_0 == WHILE )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 195:6: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_function_839 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9


      # --> action
      puts "after"
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_850 )

      # --> action
      $cuads.end_proc
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )


      end

      return 
    end



    #
    # parser rule method
    #
    # (in Foma.g)
    # 199:1: method : type_f ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID4__ = nil
      type_f5 = nil


      begin
      # at line 201:5: type_f ID parameters START ( attributes )* ( estatutes )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_869 )
      type_f5 = type_f
      @state.following.pop
      __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_875 )

      # --> action
      $scope = "#{$classId}.#{__ID4__.text}"
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_887 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_method_893 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 207:5: ( attributes )*
      while true # decision 10
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0.between?( BOOL, CHAR ) || look_10_0 == FLOAT || look_10_0 == INTEGER )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 207:6: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_method_906 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10


      # --> action
      $program.add_func("#{$classId}.#{__ID4__.text}", ( type_f5 && @input.to_s( type_f5.start, type_f5.stop ) ), $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 210:5: ( estatutes )*
      while true # decision 11
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == FOR || look_11_0.between?( ID, IF ) || look_11_0 == INPUT || look_11_0 == PRINT || look_11_0 == RETURN || look_11_0 == R_THIS || look_11_0 == WHILE )
          alt_11 = 1

        end
        case alt_11
        when 1
          # at line 210:6: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_method_927 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 11
        end
      end # loop for decision 11

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_935 )

      # --> action
      $cuads.end_proc
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )


      end

      return 
    end



    #
    # parser rule constructor
    #
    # (in Foma.g)
    # 214:1: constructor : ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __ID6__ = nil


      begin
      # at line 216:5: ID parameters START ( attributes )* ( estatutes )* R_END
      __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_constructor_954 )

      # --> action
      $scope = "#{$classId}.#{__ID6__.text}"
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_966 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_constructor_972 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 221:5: ( attributes )*
      while true # decision 12
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0.between?( BOOL, CHAR ) || look_12_0 == FLOAT || look_12_0 == INTEGER )
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 221:6: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_constructor_985 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 12
        end
      end # loop for decision 12


      # --> action
      $program.add_func("#{$classId}.#{__ID6__.text}", "CONST", $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 224:5: ( estatutes )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == FOR || look_13_0.between?( ID, IF ) || look_13_0 == INPUT || look_13_0 == PRINT || look_13_0 == RETURN || look_13_0 == R_THIS || look_13_0 == WHILE )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 224:6: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_constructor_1006 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_1014 )

      # --> action
      $cuads.end_proc
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )


      end

      return 
    end



    #
    # parser rule program
    #
    # (in Foma.g)
    # 228:1: program : PROGRAM ID START ( attributes )* ( estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID7__ = nil


      begin
      # at line 230:5: PROGRAM ID START ( attributes )* ( estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_1033 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_program_1039 )

      # --> action
      $scope = __ID7__.text
      # <-- action

      match( START, TOKENS_FOLLOWING_START_IN_program_1051 )

      # --> action
      $numTemp = $cuads.num
      # <-- action


      # --> action
      $cuads.fill_main
      # <-- action

      # at line 236:5: ( attributes )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0.between?( BOOL, CHAR ) || look_14_0 == FLOAT || look_14_0 == INTEGER )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 236:6: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_program_1070 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14


      # --> action
      $program.add_func(__ID7__.text, "void", 0, $numTemp)
      # <-- action

      # at line 238:5: ( estatutes )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0 == FOR || look_15_0.between?( ID, IF ) || look_15_0 == INPUT || look_15_0 == PRINT || look_15_0 == RETURN || look_15_0 == R_THIS || look_15_0 == WHILE )
          alt_15 = 1

        end
        case alt_15
        when 1
          # at line 238:6: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_1085 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_1093 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )


      end

      return 
    end



    #
    # parser rule variables
    #
    # (in Foma.g)
    # 242:1: variables : ( dec_var | dec_arr | dec_mat ) ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 244:5: ( dec_var | dec_arr | dec_mat )
      # at line 244:5: ( dec_var | dec_arr | dec_mat )
      alt_16 = 3
      look_16_0 = @input.peek( 1 )

      if ( look_16_0.between?( BOOL, CHAR ) || look_16_0 == FLOAT || look_16_0 == INTEGER )
        look_16_1 = @input.peek( 2 )

        if ( look_16_1 == ID )
          look_16_3 = @input.peek( 3 )

          if ( look_16_3 == LB )
            look_16_4 = @input.peek( 4 )

            if ( look_16_4 == C_INT )
              look_16_5 = @input.peek( 5 )

              if ( look_16_5 == RB )
                look_16_6 = @input.peek( 6 )

                if ( look_16_6 == SEMICOLON )
                  alt_16 = 2
                elsif ( look_16_6 == LB )
                  alt_16 = 3
                else
                  raise NoViableAlternative( "", 16, 6 )

                end
              else
                raise NoViableAlternative( "", 16, 5 )

              end
            else
              raise NoViableAlternative( "", 16, 4 )

            end
          elsif ( look_16_3 == COMMA || look_16_3 == SEMICOLON )
            alt_16 = 1
          else
            raise NoViableAlternative( "", 16, 3 )

          end
        else
          raise NoViableAlternative( "", 16, 1 )

        end
      elsif ( look_16_0 == ID )
        alt_16 = 1
      else
        raise NoViableAlternative( "", 16, 0 )

      end
      case alt_16
      when 1
        # at line 244:7: dec_var
        @state.following.push( TOKENS_FOLLOWING_dec_var_IN_variables_1112 )
        dec_var
        @state.following.pop

      when 2
        # at line 245:7: dec_arr
        @state.following.push( TOKENS_FOLLOWING_dec_arr_IN_variables_1120 )
        dec_arr
        @state.following.pop

      when 3
        # at line 246:7: dec_mat
        @state.following.push( TOKENS_FOLLOWING_dec_mat_IN_variables_1128 )
        dec_mat
        @state.following.pop

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )


      end

      return 
    end



    #
    # parser rule dec_var
    #
    # (in Foma.g)
    # 249:1: dec_var : type_c ID ( dec_var_2 )* SEMICOLON ;
    #
    def dec_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID9__ = nil
      type_c8 = nil


      begin
      # at line 251:5: type_c ID ( dec_var_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_dec_var_1147 )
      type_c8 = type_c
      @state.following.pop

      # --> action
      $varType = ( type_c8 && @input.to_s( type_c8.start, type_c8.stop ) )
      # <-- action

      __ID9__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_1159 )

      # --> action
      $program.add_var(__ID9__.text, $varType, $scope, 1, 0, 0)
      # <-- action

      # at line 255:5: ( dec_var_2 )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == COMMA )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 255:5: dec_var_2
          @state.following.push( TOKENS_FOLLOWING_dec_var_2_IN_dec_var_1171 )
          dec_var_2
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_1178 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return 
    end



    #
    # parser rule dec_var_2
    #
    # (in Foma.g)
    # 259:1: dec_var_2 : COMMA ID ;
    #
    def dec_var_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      __ID10__ = nil


      begin
      # at line 261:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dec_var_2_1195 )
      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_2_1201 )

      # --> action
      $program.add_var(__ID10__.text, $varType, $scope, 1, 0, 0)
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )


      end

      return 
    end



    #
    # parser rule dec_arr
    #
    # (in Foma.g)
    # 266:1: dec_arr : type_s ID LB C_INT RB SEMICOLON ;
    #
    def dec_arr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      __ID11__ = nil
      __C_INT13__ = nil
      type_s12 = nil


      begin
      # at line 268:5: type_s ID LB C_INT RB SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_arr_1224 )
      type_s12 = type_s
      @state.following.pop
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_arr_1230 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_arr_1236 )
      __C_INT13__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_arr_1242 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_arr_1248 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_1254 )

      # --> action
      $program.add_dim(__ID11__.text, ( type_s12 && @input.to_s( type_s12.start, type_s12.stop ) ), __C_INT13__.text, 0)
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )


      end

      return 
    end



    #
    # parser rule dec_mat
    #
    # (in Foma.g)
    # 277:1: dec_mat : type_s ID LB C_INT RB dim_2 SEMICOLON ;
    #
    def dec_mat
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID14__ = nil
      __C_INT16__ = nil
      type_s15 = nil


      begin
      # at line 279:5: type_s ID LB C_INT RB dim_2 SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_mat_1277 )
      type_s15 = type_s
      @state.following.pop
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_mat_1283 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_mat_1289 )
      __C_INT16__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_mat_1295 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_mat_1301 )
      @state.following.push( TOKENS_FOLLOWING_dim_2_IN_dec_mat_1307 )
      dim_2
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_1313 )

      # --> action
      $program.add_dim(__ID14__.text, ( type_s15 && @input.to_s( type_s15.start, type_s15.stop ) ), __C_INT16__.text, $dimTemp)
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )


      end

      return 
    end



    #
    # parser rule dim_2
    #
    # (in Foma.g)
    # 289:1: dim_2 : LB C_INT RB ;
    #
    def dim_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __C_INT17__ = nil


      begin
      # at line 291:5: LB C_INT RB
      match( LB, TOKENS_FOLLOWING_LB_IN_dim_2_1336 )
      __C_INT17__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dim_2_1342 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dim_2_1348 )

      # --> action
      $dimTemp = __C_INT17__.text
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return 
    end



    #
    # parser rule attributes
    #
    # (in Foma.g)
    # 297:1: attributes : type_s ID ( attributes_2 )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID19__ = nil
      type_s18 = nil


      begin
      # at line 299:5: type_s ID ( attributes_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_1371 )
      type_s18 = type_s
      @state.following.pop

      # --> action
      $varType = ( type_s18 && @input.to_s( type_s18.start, type_s18.stop ) )
      # <-- action

      __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_1383 )

      # --> action
      $program.add_var(__ID19__.text, $varType, $scope, 1, 0, 0)
      # <-- action

      # at line 303:5: ( attributes_2 )*
      while true # decision 18
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == COMMA )
          alt_18 = 1

        end
        case alt_18
        when 1
          # at line 303:5: attributes_2
          @state.following.push( TOKENS_FOLLOWING_attributes_2_IN_attributes_1395 )
          attributes_2
          @state.following.pop

        else
          break # out of loop for decision 18
        end
      end # loop for decision 18

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_1402 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )


      end

      return 
    end



    #
    # parser rule attributes_2
    #
    # (in Foma.g)
    # 307:1: attributes_2 : COMMA ID ;
    #
    def attributes_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID20__ = nil


      begin
      # at line 309:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_2_1419 )
      __ID20__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_2_1425 )

      # --> action
      $program.add_var(__ID20__.text, $varType, $scope, 1, 0, 0)
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )


      end

      return 
    end



    #
    # parser rule parameters
    #
    # (in Foma.g)
    # 314:1: parameters : LP ( type_s ID ( parameters_2 )* )? RP ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      __ID21__ = nil
      type_s22 = nil


      begin
      # at line 316:5: LP ( type_s ID ( parameters_2 )* )? RP
      match( LP, TOKENS_FOLLOWING_LP_IN_parameters_1448 )
      # at line 317:5: ( type_s ID ( parameters_2 )* )?
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0.between?( BOOL, CHAR ) || look_20_0 == FLOAT || look_20_0 == INTEGER )
        alt_20 = 1
      end
      case alt_20
      when 1
        # at line 317:7: type_s ID ( parameters_2 )*
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_1456 )
        type_s22 = type_s
        @state.following.pop
        __ID21__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1464 )

        # --> action
        $program.add_var(__ID21__.text, ( type_s22 && @input.to_s( type_s22.start, type_s22.stop ) ), $scope, 1, 0, 0)
        # <-- action


        # --> action
        $program.add_param_mem(__ID21__.text)
        # <-- action


        # --> action
        $params += 1
        # <-- action

        # at line 322:7: ( parameters_2 )*
        while true # decision 19
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == COMMA )
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 322:9: parameters_2
            @state.following.push( TOKENS_FOLLOWING_parameters_2_IN_parameters_1498 )
            parameters_2
            @state.following.pop

          else
            break # out of loop for decision 19
          end
        end # loop for decision 19


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_parameters_1509 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )


      end

      return 
    end



    #
    # parser rule parameters_2
    #
    # (in Foma.g)
    # 326:1: parameters_2 : COMMA type_s ID ;
    #
    def parameters_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __ID23__ = nil
      type_s24 = nil


      begin
      # at line 328:5: COMMA type_s ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_2_1526 )
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_2_1532 )
      type_s24 = type_s
      @state.following.pop
      __ID23__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_2_1538 )

      # --> action
      $program.add_var(__ID23__.text, ( type_s24 && @input.to_s( type_s24.start, type_s24.stop ) ), $scope, 1, 0, 0)
      # <-- action


      # --> action
      $program.add_param_mem(__ID23__.text)
      # <-- action


      # --> action
      $params += 1
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )


      end

      return 
    end

    TypeSReturnValue = define_return_scope

    #
    # parser rule type_s
    #
    # (in Foma.g)
    # 335:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
    #
    def type_s
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      return_value = TypeSReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 
      if @input.peek( 1 ).between?( BOOL, CHAR ) || @input.peek(1) == FLOAT || @input.peek(1) == INTEGER
        @input.consume
        @state.error_recovery = false

      else
        mse = MismatchedSet( nil )
        raise mse

      end



      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )


      end

      return return_value
    end

    TypeCReturnValue = define_return_scope

    #
    # parser rule type_c
    #
    # (in Foma.g)
    # 343:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      return_value = TypeCReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 345:5: ( type_s | ID )
      # at line 345:5: ( type_s | ID )
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0.between?( BOOL, CHAR ) || look_21_0 == FLOAT || look_21_0 == INTEGER )
        alt_21 = 1
      elsif ( look_21_0 == ID )
        alt_21 = 2
      else
        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 345:7: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_1615 )
        type_s
        @state.following.pop

      when 2
        # at line 346:7: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_1623 )

      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )


      end

      return return_value
    end

    TypeFReturnValue = define_return_scope

    #
    # parser rule type_f
    #
    # (in Foma.g)
    # 349:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      return_value = TypeFReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 351:5: ( type_s | VOID )
      # at line 351:5: ( type_s | VOID )
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0.between?( BOOL, CHAR ) || look_22_0 == FLOAT || look_22_0 == INTEGER )
        alt_22 = 1
      elsif ( look_22_0 == VOID )
        alt_22 = 2
      else
        raise NoViableAlternative( "", 22, 0 )

      end
      case alt_22
      when 1
        # at line 351:7: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_1645 )
        type_s
        @state.following.pop

      when 2
        # at line 352:7: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_1653 )

      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return return_value
    end



    #
    # parser rule block
    #
    # (in Foma.g)
    # 355:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 357:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_1672 )
      # at line 358:5: ( estatutes )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == FOR || look_23_0.between?( ID, IF ) || look_23_0 == INPUT || look_23_0 == PRINT || look_23_0 == RETURN || look_23_0 == R_THIS || look_23_0 == WHILE )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 358:5: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_1678 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 23
        end
      end # loop for decision 23

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1685 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )


      end

      return 
    end



    #
    # parser rule super_expression
    #
    # (in Foma.g)
    # 363:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      __AND25__ = nil
      __OR26__ = nil


      begin
      # at line 365:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1703 )
      expression
      @state.following.pop
      # at line 366:5: ( ( AND | OR ) expression )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == AND || look_25_0 == OR )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 366:6: ( AND | OR ) expression
          # at line 366:6: ( AND | OR )
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == AND )
            alt_24 = 1
          elsif ( look_24_0 == OR )
            alt_24 = 2
          else
            raise NoViableAlternative( "", 24, 0 )

          end
          case alt_24
          when 1
            # at line 366:8: AND
            __AND25__ = match( AND, TOKENS_FOLLOWING_AND_IN_super_expression_1712 )

            # --> action
            $cuads.add_SE(__AND25__.text)
            # <-- action


          when 2
            # at line 367:9: OR
            __OR26__ = match( OR, TOKENS_FOLLOWING_OR_IN_super_expression_1724 )

            # --> action
            $cuads.add_SE(__OR26__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1733 )
          expression
          @state.following.pop

        else
          break # out of loop for decision 25
        end
      end # loop for decision 25


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )


      end

      return 
    end



    #
    # parser rule expression
    #
    # (in Foma.g)
    # 371:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __LT27__ = nil
      __LEQ28__ = nil
      __GT29__ = nil
      __GEQ30__ = nil
      __EQ31__ = nil
      __NE32__ = nil


      begin
      # at line 373:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1752 )
      exp
      @state.following.pop
      # at line 374:5: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == EQ || look_27_0.between?( GEQ, GT ) || look_27_0 == LEQ || look_27_0 == LT || look_27_0 == NE )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 374:6: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          # at line 374:6: ( LT | LEQ | GT | GEQ | EQ | NE )
          alt_26 = 6
          case look_26 = @input.peek( 1 )
          when LT then alt_26 = 1
          when LEQ then alt_26 = 2
          when GT then alt_26 = 3
          when GEQ then alt_26 = 4
          when EQ then alt_26 = 5
          when NE then alt_26 = 6
          else
            raise NoViableAlternative( "", 26, 0 )

          end
          case alt_26
          when 1
            # at line 374:9: LT
            __LT27__ = match( LT, TOKENS_FOLLOWING_LT_IN_expression_1762 )

            # --> action
            $cuads.add_E(__LT27__.text)
            # <-- action


          when 2
            # at line 375:9: LEQ
            __LEQ28__ = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expression_1774 )

            # --> action
            $cuads.add_E(__LEQ28__.text)
            # <-- action


          when 3
            # at line 376:9: GT
            __GT29__ = match( GT, TOKENS_FOLLOWING_GT_IN_expression_1786 )

            # --> action
            $cuads.add_E(__GT29__.text)
            # <-- action


          when 4
            # at line 377:9: GEQ
            __GEQ30__ = match( GEQ, TOKENS_FOLLOWING_GEQ_IN_expression_1798 )

            # --> action
            $cuads.add_E(__GEQ30__.text)
            # <-- action


          when 5
            # at line 378:9: EQ
            __EQ31__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_1810 )

            # --> action
            $cuads.add_E(__EQ31__.text)
            # <-- action


          when 6
            # at line 379:9: NE
            __NE32__ = match( NE, TOKENS_FOLLOWING_NE_IN_expression_1822 )

            # --> action
            $cuads.add_E(__NE32__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1831 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 27
        end
      end # loop for decision 27


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Foma.g)
    # 383:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __ADD33__ = nil
      __SUB34__ = nil


      begin
      # at line 385:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1850 )
      term
      @state.following.pop
      # at line 386:5: ( ( ADD | SUB ) term )*
      while true # decision 29
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == ADD || look_29_0 == SUB )
          alt_29 = 1

        end
        case alt_29
        when 1
          # at line 386:6: ( ADD | SUB ) term
          # at line 386:6: ( ADD | SUB )
          alt_28 = 2
          look_28_0 = @input.peek( 1 )

          if ( look_28_0 == ADD )
            alt_28 = 1
          elsif ( look_28_0 == SUB )
            alt_28 = 2
          else
            raise NoViableAlternative( "", 28, 0 )

          end
          case alt_28
          when 1
            # at line 386:7: ADD
            __ADD33__ = match( ADD, TOKENS_FOLLOWING_ADD_IN_exp_1858 )

            # --> action
            $cuads.add_EXP(__ADD33__.text)
            # <-- action


          when 2
            # at line 387:7: SUB
            __SUB34__ = match( SUB, TOKENS_FOLLOWING_SUB_IN_exp_1868 )

            # --> action
            $cuads.add_EXP(__SUB34__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1877 )
          term
          @state.following.pop

        else
          break # out of loop for decision 29
        end
      end # loop for decision 29


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in Foma.g)
    # 391:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT35__ = nil
      __DIV36__ = nil
      __MOD37__ = nil


      begin
      # at line 393:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1896 )
      factor
      @state.following.pop
      # at line 394:5: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 31
        alt_31 = 2
        look_31_0 = @input.peek( 1 )

        if ( look_31_0 == DIV || look_31_0.between?( MOD, MULT ) )
          alt_31 = 1

        end
        case alt_31
        when 1
          # at line 394:6: ( MULT | DIV | MOD ) factor
          # at line 394:6: ( MULT | DIV | MOD )
          alt_30 = 3
          case look_30 = @input.peek( 1 )
          when MULT then alt_30 = 1
          when DIV then alt_30 = 2
          when MOD then alt_30 = 3
          else
            raise NoViableAlternative( "", 30, 0 )

          end
          case alt_30
          when 1
            # at line 394:8: MULT
            __MULT35__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1905 )

            # --> action
            $cuads.add_T(__MULT35__.text)
            # <-- action


          when 2
            # at line 395:9: DIV
            __DIV36__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1917 )

            # --> action
            $cuads.add_T(__DIV36__.text)
            # <-- action


          when 3
            # at line 396:9: MOD
            __MOD37__ = match( MOD, TOKENS_FOLLOWING_MOD_IN_term_1929 )

            # --> action
            $cuads.add_T(__MOD37__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1939 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 31
        end
      end # loop for decision 31


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )


      end

      return 
    end



    #
    # parser rule factor
    #
    # (in Foma.g)
    # 400:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      begin
      # at line 401:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 401:5: ( LP super_expression RP | var_cte | func_call | method_call )
      alt_32 = 4
      case look_32 = @input.peek( 1 )
      when LP then alt_32 = 1
      when C_BOOL, C_CHAR, C_FLOAT, C_INT, R_THIS then alt_32 = 2
      when ID then case look_32 = @input.peek( 2 )
      when POINT then look_32_4 = @input.peek( 3 )

      if ( look_32_4 == ID )
        look_32_6 = @input.peek( 4 )

        if ( look_32_6.between?( ADD, AND ) || look_32_6 == COMMA || look_32_6 == DIV || look_32_6 == EQ || look_32_6.between?( GEQ, GT ) || look_32_6 == LEQ || look_32_6.between?( LT, NE ) || look_32_6 == OR || look_32_6 == RB || look_32_6 == RP || look_32_6 == SEMICOLON || look_32_6 == SUB )
          alt_32 = 2
        elsif ( look_32_6 == LP )
          alt_32 = 4
        else
          raise NoViableAlternative( "", 32, 6 )

        end
      else
        raise NoViableAlternative( "", 32, 4 )

      end
      when ADD, AND, COMMA, DIV, EQ, GEQ, GT, LB, LEQ, LT, MOD, MULT, NE, OR, RB, RP, SEMICOLON, SUB then alt_32 = 2
      when LP then alt_32 = 3
      else
        raise NoViableAlternative( "", 32, 3 )

      end
      else
        raise NoViableAlternative( "", 32, 0 )

      end
      case alt_32
      when 1
        # at line 401:7: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1957 )

        # --> action
        $cuads.add_falseBottom
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1969 )
        super_expression
        @state.following.pop
        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1977 )

        # --> action
        $cuads.rem_falseBottom
        # <-- action


      when 2
        # at line 404:9: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1989 )
        var_cte
        @state.following.pop

      when 3
        # at line 405:9: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1999 )
        func_call
        @state.following.pop

      when 4
        # at line 406:9: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_2009 )
        method_call
        @state.following.pop

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )


      end

      return 
    end



    #
    # parser rule var_cte
    #
    # (in Foma.g)
    # 409:1: var_cte : ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      __C_INT38__ = nil
      __C_FLOAT39__ = nil
      __C_CHAR40__ = nil
      __C_BOOL41__ = nil


      begin
      # at line 411:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 411:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      alt_33 = 5
      case look_33 = @input.peek( 1 )
      when ID, R_THIS then alt_33 = 1
      when C_INT then alt_33 = 2
      when C_FLOAT then alt_33 = 3
      when C_CHAR then alt_33 = 4
      when C_BOOL then alt_33 = 5
      else
        raise NoViableAlternative( "", 33, 0 )

      end
      case alt_33
      when 1
        # at line 411:6: var_access
        @state.following.push( TOKENS_FOLLOWING_var_access_IN_var_cte_2029 )
        var_access
        @state.following.pop

      when 2
        # at line 412:7: C_INT
        __C_INT38__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_2037 )

        # --> action
        $program.add_const(__C_INT38__.text, "int")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_INT38__.text, "int")
        # <-- action


      when 3
        # at line 413:7: C_FLOAT
        __C_FLOAT39__ = match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_2049 )

        # --> action
        $program.add_const(__C_FLOAT39__.text, "float")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_FLOAT39__.text, "float")
        # <-- action


      when 4
        # at line 414:7: C_CHAR
        __C_CHAR40__ = match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_2062 )

        # --> action
        $program.add_const(__C_CHAR40__.text, "char")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_CHAR40__.text, "char")
        # <-- action


      when 5
        # at line 415:7: C_BOOL
        __C_BOOL41__ = match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_2075 )

        # --> action
        $program.add_const(__C_BOOL41__.text, "bool")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_BOOL41__.text, "bool")
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )


      end

      return 
    end



    #
    # parser rule var_access
    #
    # (in Foma.g)
    # 418:1: var_access : ( R_THIS )? ID ( obj_access | dim_access )? ;
    #
    def var_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      __ID42__ = nil


      begin
      # at line 420:6: ( R_THIS )? ID ( obj_access | dim_access )?
      # at line 420:6: ( R_THIS )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == R_THIS )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 420:7: R_THIS
        match( R_THIS, TOKENS_FOLLOWING_R_THIS_IN_var_access_2100 )

        # --> action
        $cuads.indirect = true
        # <-- action


      end
      __ID42__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_access_2106 )

      # --> action
      $aux = ""
      # <-- action

      # at line 421:5: ( obj_access | dim_access )?
      alt_35 = 3
      look_35_0 = @input.peek( 1 )

      if ( look_35_0 == POINT )
        alt_35 = 1
      elsif ( look_35_0 == LB )
        alt_35 = 2
      end
      case alt_35
      when 1
        # at line 421:6: obj_access
        @state.following.push( TOKENS_FOLLOWING_obj_access_IN_var_access_2115 )
        obj_access
        @state.following.pop

      when 2
        # at line 421:19: dim_access
        @state.following.push( TOKENS_FOLLOWING_dim_access_IN_var_access_2119 )
        dim_access
        @state.following.pop

      end

      # --> action
      $cuads.add_operando("#{__ID42__.text}#{$aux}" , $scope)
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return 
    end



    #
    # parser rule dim_access
    #
    # (in Foma.g)
    # 426:1: dim_access : LB super_expression RB ( LB super_expression RB )? ;
    #
    def dim_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 428:5: LB super_expression RB ( LB super_expression RB )?
      match( LB, TOKENS_FOLLOWING_LB_IN_dim_access_2146 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_dim_access_2156 )
      super_expression
      @state.following.pop
      match( RB, TOKENS_FOLLOWING_RB_IN_dim_access_2162 )

      # --> action
      $cuads.rem_falseBottom
      # <-- action

      # at line 432:5: ( LB super_expression RB )?
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == LB )
        alt_36 = 1
      end
      case alt_36
      when 1
        # at line 432:6: LB super_expression RB
        match( LB, TOKENS_FOLLOWING_LB_IN_dim_access_2172 )

        # --> action
        $cuads.add_falseBottom
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_dim_access_2182 )
        super_expression
        @state.following.pop
        match( RB, TOKENS_FOLLOWING_RB_IN_dim_access_2188 )

        # --> action
        $cuads.rem_falseBottom
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )


      end

      return 
    end



    #
    # parser rule obj_access
    #
    # (in Foma.g)
    # 437:1: obj_access : POINT ID ;
    #
    def obj_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      __ID43__ = nil


      begin
      # at line 439:5: POINT ID
      match( POINT, TOKENS_FOLLOWING_POINT_IN_obj_access_2209 )
      __ID43__ = match( ID, TOKENS_FOLLOWING_ID_IN_obj_access_2211 )

      # --> action
      $aux = ".#{__ID43__.text}"
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )


      end

      return 
    end



    #
    # parser rule estatutes
    #
    # (in Foma.g)
    # 443:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON | r_return ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      begin
      # at line 445:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON | r_return )
      # at line 445:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON | r_return )
      alt_37 = 9
      case look_37 = @input.peek( 1 )
      when R_THIS then alt_37 = 1
      when ID then case look_37 = @input.peek( 2 )
      when POINT then look_37_9 = @input.peek( 3 )

      if ( look_37_9 == ID )
        look_37_11 = @input.peek( 4 )

        if ( look_37_11 == ASSIGN )
          alt_37 = 1
        elsif ( look_37_11 == LP )
          alt_37 = 8
        else
          raise NoViableAlternative( "", 37, 11 )

        end
      else
        raise NoViableAlternative( "", 37, 9 )

      end
      when ASSIGN, LB then alt_37 = 1
      when LP then alt_37 = 7
      else
        raise NoViableAlternative( "", 37, 2 )

      end
      when IF then alt_37 = 2
      when WHILE then alt_37 = 3
      when FOR then alt_37 = 4
      when PRINT then alt_37 = 5
      when INPUT then alt_37 = 6
      when RETURN then alt_37 = 9
      else
        raise NoViableAlternative( "", 37, 0 )

      end
      case alt_37
      when 1
        # at line 445:7: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_2233 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_2235 )

      when 2
        # at line 446:7: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_2243 )
        condition
        @state.following.pop

      when 3
        # at line 447:7: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_2251 )
        while_loop
        @state.following.pop

      when 4
        # at line 448:7: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_2259 )
        for_loop
        @state.following.pop

      when 5
        # at line 449:7: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_2267 )
        print
        @state.following.pop

      when 6
        # at line 450:7: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_2275 )
        input
        @state.following.pop

      when 7
        # at line 451:7: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_2283 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_2285 )

      when 8
        # at line 452:7: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_2293 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_2295 )

      when 9
        # at line 453:7: r_return
        @state.following.push( TOKENS_FOLLOWING_r_return_IN_estatutes_2303 )
        r_return
        @state.following.pop

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )


      end

      return 
    end



    #
    # parser rule assign
    #
    # (in Foma.g)
    # 456:1: assign : var_access ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )


      begin
      # at line 458:5: var_access ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_var_access_IN_assign_2322 )
      var_access
      @state.following.pop
      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_2328 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_2336 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.do_assign()
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )


      end

      return 
    end



    #
    # parser rule condition
    #
    # (in Foma.g)
    # 464:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )


      begin
      # at line 466:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_2361 )

      # --> action
      puts "IF"
      # <-- action

      match( LP, TOKENS_FOLLOWING_LP_IN_condition_2369 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_2379 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_condition_2385 )

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_2399 )
      block
      @state.following.pop
      # at line 472:5: ( ELSE block )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ELSE )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 472:7: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_2407 )

        # --> action
        $cuads.goto_else
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_2423 )
        block
        @state.following.pop

      end

      # --> action
      $cuads.fill_goto
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )


      end

      return 
    end



    #
    # parser rule while_loop
    #
    # (in Foma.g)
    # 478:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )


      begin
      # at line 480:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_2448 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_2454 )

      # --> action
      $cuads.add_falseBottom
      # <-- action


      # --> action
      $cuads.save_spot
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_2468 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_2474 )

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_2488 )
      block
      @state.following.pop

      # --> action
      $cuads.goto_loop
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 34 )


      end

      return 
    end



    #
    # parser rule for_loop
    #
    # (in Foma.g)
    # 490:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )


      begin
      # at line 492:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_2511 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_2517 )
      # at line 494:5: ( assign )?
      alt_39 = 2
      look_39_0 = @input.peek( 1 )

      if ( look_39_0 == ID || look_39_0 == R_THIS )
        alt_39 = 1
      end
      case alt_39
      when 1
        # at line 494:5: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_2523 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_2526 )

      # --> action
      $cuads.save_spot
      # <-- action


      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_2542 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_2560 )

      # --> action
      $cuads.add_swap
      # <-- action

      # at line 501:5: ( assign )?
      alt_40 = 2
      look_40_0 = @input.peek( 1 )

      if ( look_40_0 == ID || look_40_0 == R_THIS )
        alt_40 = 1
      end
      case alt_40
      when 1
        # at line 501:5: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_2572 )
        assign
        @state.following.pop

      end

      # --> action
      $cuads.add_swap
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_2585 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_2591 )
      block
      @state.following.pop

      # --> action
      $cuads.do_swap
      # <-- action


      # --> action
      $cuads.goto_loop
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 35 )


      end

      return 
    end



    #
    # parser rule print
    #
    # (in Foma.g)
    # 509:1: print : PRINT LP ( super_expression ( print_2 )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )


      begin
      # at line 511:5: PRINT LP ( super_expression ( print_2 )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_2620 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_2626 )
      # at line 513:5: ( super_expression ( print_2 )* )
      # at line 514:5: super_expression ( print_2 )*
      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_2646 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.do_print
      # <-- action

      # at line 518:5: ( print_2 )*
      while true # decision 41
        alt_41 = 2
        look_41_0 = @input.peek( 1 )

        if ( look_41_0 == COMMA )
          alt_41 = 1

        end
        case alt_41
        when 1
          # at line 518:5: print_2
          @state.following.push( TOKENS_FOLLOWING_print_2_IN_print_2664 )
          print_2
          @state.following.pop

        else
          break # out of loop for decision 41
        end
      end # loop for decision 41


      match( RP, TOKENS_FOLLOWING_RP_IN_print_2673 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_2679 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 36 )


      end

      return 
    end



    #
    # parser rule print_2
    #
    # (in Foma.g)
    # 523:1: print_2 : COMMA LP super_expression RP ;
    #
    def print_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )


      begin
      # at line 525:5: COMMA LP super_expression RP
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_2_2696 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_2_2702 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_2_2712 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_print_2_2718 )

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.do_print
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 37 )


      end

      return 
    end



    #
    # parser rule input
    #
    # (in Foma.g)
    # 532:1: input : INPUT LP ID RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )


      __ID44__ = nil


      begin
      # at line 533:5: INPUT LP ID RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_2739 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_2741 )
      __ID44__ = match( ID, TOKENS_FOLLOWING_ID_IN_input_2743 )

      # --> action
      $cuads.add_operando(__ID44__.text, $scope)
      # <-- action


      # --> action
      $cuads.do_input
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_input_2749 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_2751 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 38 )


      end

      return 
    end



    #
    # parser rule func_call
    #
    # (in Foma.g)
    # 536:1: func_call : ID LP ( call_params )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )


      __ID45__ = nil


      begin
      # at line 538:5: ID LP ( call_params )? RP
      __ID45__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_2768 )

      # --> action
      $cuads.era(__ID45__.text)
      # <-- action

      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_2780 )

      # --> action
      $params = 0
      # <-- action

      # at line 541:5: ( call_params )?
      alt_42 = 2
      look_42_0 = @input.peek( 1 )

      if ( look_42_0.between?( C_BOOL, C_INT ) || look_42_0 == ID || look_42_0 == LP || look_42_0 == R_THIS )
        alt_42 = 1
      end
      case alt_42
      when 1
        # at line 541:5: call_params
        @state.following.push( TOKENS_FOLLOWING_call_params_IN_func_call_2788 )
        call_params
        @state.following.pop

      end

      # --> action
      $cuads.go_sub(__ID45__.text)
      # <-- action


      # --> action
      $cuads.return_type(__ID45__.text)
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_2807 )

      # --> action
      $params = 0
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 39 )


      end

      return 
    end



    #
    # parser rule call_params
    #
    # (in Foma.g)
    # 547:1: call_params : super_expression ( call_params2 )* ;
    #
    def call_params
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )


      begin
      # at line 548:7: super_expression ( call_params2 )*
      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_call_params_2825 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.params($params)
      # <-- action


      # --> action
      $params +=1
      # <-- action

      # at line 548:117: ( call_params2 )*
      while true # decision 43
        alt_43 = 2
        look_43_0 = @input.peek( 1 )

        if ( look_43_0 == COMMA )
          alt_43 = 1

        end
        case alt_43
        when 1
          # at line 548:117: call_params2
          @state.following.push( TOKENS_FOLLOWING_call_params2_IN_call_params_2832 )
          call_params2
          @state.following.pop

        else
          break # out of loop for decision 43
        end
      end # loop for decision 43


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 40 )


      end

      return 
    end



    #
    # parser rule call_params2
    #
    # (in Foma.g)
    # 551:1: call_params2 : COMMA super_expression ;
    #
    def call_params2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )


      begin
      # at line 552:7: COMMA super_expression
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_call_params2_2848 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_call_params2_2852 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.params($params)
      # <-- action


      # --> action
      $params +=1
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 41 )


      end

      return 
    end



    #
    # parser rule method_call
    #
    # (in Foma.g)
    # 555:1: method_call : ID POINT method_call_2 LP ( call_params )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )


      __ID46__ = nil


      begin
      # at line 557:5: ID POINT method_call_2 LP ( call_params )? RP
      __ID46__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2877 )

      # --> action
      $varId = __ID46__.text
      # <-- action


      # --> action
      $varType = $program.dirFunc.functions["global"].dirVars.variables[__ID46__.text].type
      # <-- action

      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_2887 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_2889 )
      method_call_2
      @state.following.pop
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_2891 )
      # at line 558:28: ( call_params )?
      alt_44 = 2
      look_44_0 = @input.peek( 1 )

      if ( look_44_0.between?( C_BOOL, C_INT ) || look_44_0 == ID || look_44_0 == LP || look_44_0 == R_THIS )
        alt_44 = 1
      end
      case alt_44
      when 1
        # at line 558:28: call_params
        @state.following.push( TOKENS_FOLLOWING_call_params_IN_method_call_2893 )
        call_params
        @state.following.pop

      end

      # --> action
      $cuads.go_sub("#{$varType}.#{$funcId}")
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_2907 )

      # --> action
      $params = 0
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 42 )


      end

      return 
    end



    #
    # parser rule method_call_2
    #
    # (in Foma.g)
    # 564:1: method_call_2 : ID ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )


      __ID47__ = nil


      begin
      # at line 566:5: ID
      __ID47__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_2925 )

      # --> action
      $funcId = __ID47__.text
      # <-- action


      # --> action
      $cuads.era("#{$varType}.#{$funcId}")
      # <-- action


      # --> action
      $cuads.pass_attrs($varId, $varType)
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 43 )


      end

      return 
    end



    #
    # parser rule r_return
    #
    # (in Foma.g)
    # 571:1: r_return : RETURN super_expression SEMICOLON ;
    #
    def r_return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )


      begin
      # at line 572:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_r_return_2950 )

      # --> action
      puts "RETURN"
      # <-- action


      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_r_return_2955 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.do_return($scope)
      # <-- action

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_r_return_2962 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 44 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_600 = Set[ 7, 8, 9, 19, 21, 24, 28, 42 ]
    TOKENS_FOLLOWING_variables_IN_commence_611 = Set[ 7, 8, 19, 21, 24, 28, 42 ]
    TOKENS_FOLLOWING_function_IN_commence_622 = Set[ 21, 42 ]
    TOKENS_FOLLOWING_program_IN_commence_630 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_667 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_675 = Set[ 26, 51 ]
    TOKENS_FOLLOWING_inherits_IN_r_class_683 = Set[ 51 ]
    TOKENS_FOLLOWING_START_IN_r_class_690 = Set[ 7, 8, 19, 24, 28, 47, 53 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_697 = Set[ 7, 8, 19, 24, 28, 47, 53 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_711 = Set[ 7, 8, 19, 28, 47, 53 ]
    TOKENS_FOLLOWING_method_IN_r_class_719 = Set[ 7, 8, 19, 28, 47, 53 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_733 = Set[ 1 ]
    TOKENS_FOLLOWING_INHER_IN_inherits_750 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_inherits_756 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_773 = Set[ 7, 8, 19, 28, 53 ]
    TOKENS_FOLLOWING_type_f_IN_function_779 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_785 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_function_793 = Set[ 51 ]
    TOKENS_FOLLOWING_START_IN_function_799 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_attributes_IN_function_812 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_estatutes_IN_function_839 = Set[ 20, 24, 25, 27, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_R_END_IN_function_850 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_869 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_875 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_method_887 = Set[ 51 ]
    TOKENS_FOLLOWING_START_IN_method_893 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_attributes_IN_method_906 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_estatutes_IN_method_927 = Set[ 20, 24, 25, 27, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_R_END_IN_method_935 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_954 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_966 = Set[ 51 ]
    TOKENS_FOLLOWING_START_IN_constructor_972 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_attributes_IN_constructor_985 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_estatutes_IN_constructor_1006 = Set[ 20, 24, 25, 27, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_1014 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_1033 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_1039 = Set[ 51 ]
    TOKENS_FOLLOWING_START_IN_program_1051 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_attributes_IN_program_1070 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_estatutes_IN_program_1085 = Set[ 20, 24, 25, 27, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_R_END_IN_program_1093 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_var_IN_variables_1112 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_arr_IN_variables_1120 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_mat_IN_variables_1128 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_dec_var_1147 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_1159 = Set[ 11, 50 ]
    TOKENS_FOLLOWING_dec_var_2_IN_dec_var_1171 = Set[ 11, 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_1178 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_dec_var_2_1195 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_2_1201 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_arr_1224 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_arr_1230 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_arr_1236 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_arr_1242 = Set[ 43 ]
    TOKENS_FOLLOWING_RB_IN_dec_arr_1248 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_1254 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_mat_1277 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_mat_1283 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_mat_1289 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_mat_1295 = Set[ 43 ]
    TOKENS_FOLLOWING_RB_IN_dec_mat_1301 = Set[ 29 ]
    TOKENS_FOLLOWING_dim_2_IN_dec_mat_1307 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_1313 = Set[ 1 ]
    TOKENS_FOLLOWING_LB_IN_dim_2_1336 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dim_2_1342 = Set[ 43 ]
    TOKENS_FOLLOWING_RB_IN_dim_2_1348 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_1371 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_1383 = Set[ 11, 50 ]
    TOKENS_FOLLOWING_attributes_2_IN_attributes_1395 = Set[ 11, 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_1402 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_2_1419 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_2_1425 = Set[ 1 ]
    TOKENS_FOLLOWING_LP_IN_parameters_1448 = Set[ 7, 8, 19, 28, 46 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_1456 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1464 = Set[ 11, 46 ]
    TOKENS_FOLLOWING_parameters_2_IN_parameters_1498 = Set[ 11, 46 ]
    TOKENS_FOLLOWING_RP_IN_parameters_1509 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_2_1526 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_2_1532 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_2_1538 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_1615 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_1623 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_1645 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_1653 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_1672 = Set[ 20, 24, 25, 27, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_estatutes_IN_block_1678 = Set[ 20, 24, 25, 27, 41, 45, 47, 49, 54 ]
    TOKENS_FOLLOWING_R_END_IN_block_1685 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1703 = Set[ 1, 5, 39 ]
    TOKENS_FOLLOWING_AND_IN_super_expression_1712 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_OR_IN_super_expression_1724 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1733 = Set[ 1, 5, 39 ]
    TOKENS_FOLLOWING_exp_IN_expression_1752 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_LT_IN_expression_1762 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_LEQ_IN_expression_1774 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_GT_IN_expression_1786 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_GEQ_IN_expression_1798 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_EQ_IN_expression_1810 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_NE_IN_expression_1822 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_exp_IN_expression_1831 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1850 = Set[ 1, 4, 52 ]
    TOKENS_FOLLOWING_ADD_IN_exp_1858 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_SUB_IN_exp_1868 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_term_IN_exp_1877 = Set[ 1, 4, 52 ]
    TOKENS_FOLLOWING_factor_IN_term_1896 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_MULT_IN_term_1905 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_DIV_IN_term_1917 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_MOD_IN_term_1929 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_factor_IN_term_1939 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1957 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1969 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_factor_1977 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1989 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1999 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_2009 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_var_cte_2029 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_2037 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_2049 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_2062 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_2075 = Set[ 1 ]
    TOKENS_FOLLOWING_R_THIS_IN_var_access_2100 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_var_access_2106 = Set[ 1, 29, 40 ]
    TOKENS_FOLLOWING_obj_access_IN_var_access_2115 = Set[ 1 ]
    TOKENS_FOLLOWING_dim_access_IN_var_access_2119 = Set[ 1 ]
    TOKENS_FOLLOWING_LB_IN_dim_access_2146 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_dim_access_2156 = Set[ 43 ]
    TOKENS_FOLLOWING_RB_IN_dim_access_2162 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_dim_access_2172 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_dim_access_2182 = Set[ 43 ]
    TOKENS_FOLLOWING_RB_IN_dim_access_2188 = Set[ 1 ]
    TOKENS_FOLLOWING_POINT_IN_obj_access_2209 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_obj_access_2211 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_2233 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_2235 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_2243 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_2251 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_2259 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_2267 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_2275 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_2283 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_2285 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_2293 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_2295 = Set[ 1 ]
    TOKENS_FOLLOWING_r_return_IN_estatutes_2303 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_assign_2322 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_2328 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_2336 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_2361 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_2369 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_2379 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_condition_2385 = Set[ 51 ]
    TOKENS_FOLLOWING_block_IN_condition_2399 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_2407 = Set[ 51 ]
    TOKENS_FOLLOWING_block_IN_condition_2423 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_2448 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_2454 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_2468 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_2474 = Set[ 51 ]
    TOKENS_FOLLOWING_block_IN_while_loop_2488 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_2511 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_2517 = Set[ 24, 49, 50 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_2523 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_2526 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_2542 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_2560 = Set[ 24, 46, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_2572 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_2585 = Set[ 51 ]
    TOKENS_FOLLOWING_block_IN_for_loop_2591 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_2620 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_2626 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_print_2646 = Set[ 11, 46 ]
    TOKENS_FOLLOWING_print_2_IN_print_2664 = Set[ 11, 46 ]
    TOKENS_FOLLOWING_RP_IN_print_2673 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_2679 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_print_2_2696 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_2_2702 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_print_2_2712 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_print_2_2718 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_2739 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_2741 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_input_2743 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_input_2749 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_2751 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_2768 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_2780 = Set[ 12, 13, 14, 15, 24, 32, 46, 49 ]
    TOKENS_FOLLOWING_call_params_IN_func_call_2788 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_func_call_2807 = Set[ 1 ]
    TOKENS_FOLLOWING_super_expression_IN_call_params_2825 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_call_params2_IN_call_params_2832 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_COMMA_IN_call_params2_2848 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_call_params2_2852 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2877 = Set[ 40 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_2887 = Set[ 24 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_2889 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_2891 = Set[ 12, 13, 14, 15, 24, 32, 46, 49 ]
    TOKENS_FOLLOWING_call_params_IN_method_call_2893 = Set[ 46 ]
    TOKENS_FOLLOWING_RP_IN_method_call_2907 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_2925 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_r_return_2950 = Set[ 12, 13, 14, 15, 24, 32, 49 ]
    TOKENS_FOLLOWING_super_expression_IN_r_return_2955 = Set[ 50 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_r_return_2962 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
