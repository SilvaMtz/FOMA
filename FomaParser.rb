#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-17 16:11:49
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
                   :MULT => 35, :NE => 36, :NEW => 37, :NEWLINE => 38, :NULL => 39, 
                   :OR => 40, :POINT => 41, :PRINT => 42, :PROGRAM => 43, 
                   :RB => 44, :RBRACE => 45, :RETURN => 46, :RP => 47, :R_END => 48, 
                   :SEMICOLON => 49, :START => 50, :SUB => 51, :VOID => 52, 
                   :WHILE => 53, :WHITESPACE => 54 )


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
                    "LEQ", "LP", "LT", "MOD", "MULT", "NE", "NEW", "NEWLINE", 
                    "NULL", "OR", "POINT", "PRINT", "PROGRAM", "RB", "RBRACE", 
                    "RETURN", "RP", "R_END", "SEMICOLON", "START", "SUB", 
                    "VOID", "WHILE", "WHITESPACE" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Foma

    RULE_METHODS = [ :commence, :r_class, :inherits, :function, :method, 
                     :constructor, :program, :variables, :dec_var, :dec_var_2, 
                     :dec_arr, :dec_mat, :dim_2, :attributes, :attributes_2, 
                     :parameters, :parameters_2, :type_s, :type_c, :type_f, 
                     :block, :super_expression, :expression, :exp, :term, 
                     :factor, :var_cte, :var_access, :estatutes, :estatutes_f, 
                     :assign, :condition, :while_loop, :for_loop, :print, 
                     :input, :func_call, :method_call, :r_return ].freeze

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
      $params = 0
      $classId
      $varId
      $varType
      $dimTemp

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 139:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 140:5: ( r_class )* ( variables )* ( function )* program
      # at line 140:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 140:7: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_commence_584 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 140:20: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 140:21: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_commence_592 )
          variables
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2


      # --> action
      $program.add_func("GLOBAL", "void", 0)
      # <-- action

      # at line 140:75: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 140:76: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_commence_599 )
          function
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      @state.following.push( TOKENS_FOLLOWING_program_IN_commence_603 )
      program
      @state.following.pop

      # --> action
      puts "EXITS"
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
    # 144:1: r_class : CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 145:5: CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_624 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_626 )

      # --> action
      $classId = __ID1__.text
      # <-- action

      # at line 145:38: ( inherits )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 145:38: inherits
        @state.following.push( TOKENS_FOLLOWING_inherits_IN_r_class_631 )
        inherits
        @state.following.pop

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_634 )
      # at line 145:55: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 145:57: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_639 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5


      # --> action
      $program.add_attrs()
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_647 )
      constructor
      @state.following.pop
      # at line 145:109: ( method )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( BOOL, CHAR ) || look_6_0 == FLOAT || look_6_0 == INTEGER || look_6_0 == VOID )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 145:111: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_652 )
          method
          @state.following.pop

        else
          break # out of loop for decision 6
        end
      end # loop for decision 6


      # --> action
      $program.add_class($classId)
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_660 )

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
    # 148:1: inherits : ( INHER ID ) ;
    #
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 149:4: ( INHER ID )
      # at line 149:4: ( INHER ID )
      # at line 149:6: INHER ID
      match( INHER, TOKENS_FOLLOWING_INHER_IN_inherits_674 )
      match( ID, TOKENS_FOLLOWING_ID_IN_inherits_676 )


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
    # 152:1: function : FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID2__ = nil
      type_f3 = nil


      begin
      # at line 153:5: FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_691 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_693 )
      type_f3 = type_f
      @state.following.pop
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_695 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_697 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_function_699 )
      # at line 153:41: ( attributes )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 153:42: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_function_702 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7


      # --> action
      $program.add_func(__ID2__.text, ( type_f3 && @input.to_s( type_f3.start, type_f3.stop ) ), $params)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 153:123: ( estatutes_f )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == FOR || look_8_0.between?( ID, IF ) || look_8_0 == INPUT || look_8_0 == PRINT || look_8_0 == RETURN || look_8_0 == WHILE )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 153:124: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_function_709 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_713 )

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
    # 156:1: method : type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID4__ = nil
      type_f5 = nil


      begin
      # at line 157:5: type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_726 )
      type_f5 = type_f
      @state.following.pop
      __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_728 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_730 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_method_732 )
      # at line 157:32: ( attributes )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( BOOL, CHAR ) || look_9_0 == FLOAT || look_9_0 == INTEGER )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 157:33: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_method_735 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9


      # --> action
      $program.add_func(__ID4__.text, ( type_f5 && @input.to_s( type_f5.start, type_f5.stop ) ), $params)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 157:117: ( estatutes_f )*
      while true # decision 10
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == FOR || look_10_0.between?( ID, IF ) || look_10_0 == INPUT || look_10_0 == PRINT || look_10_0 == RETURN || look_10_0 == WHILE )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 157:118: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_method_745 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_750 )

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
    # 160:1: constructor : ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __ID6__ = nil


      begin
      # at line 161:6: ID parameters START ( attributes )* ( estatutes )* R_END
      __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_constructor_764 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_766 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_constructor_769 )
      # at line 161:27: ( attributes )*
      while true # decision 11
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0.between?( BOOL, CHAR ) || look_11_0 == FLOAT || look_11_0 == INTEGER )
          alt_11 = 1

        end
        case alt_11
        when 1
          # at line 161:28: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_constructor_772 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 11
        end
      end # loop for decision 11

      # at line 161:41: ( estatutes )*
      while true # decision 12
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == FOR || look_12_0.between?( ID, IF ) || look_12_0 == INPUT || look_12_0 == PRINT || look_12_0 == WHILE )
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 161:42: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_constructor_777 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 12
        end
      end # loop for decision 12


      # --> action
      $program.add_func(__ID6__.text, "CONST", $params)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_784 )

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
    # 164:1: program : PROGRAM ID START ( attributes )* ( estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID7__ = nil


      begin
      # at line 165:5: PROGRAM ID START ( attributes )* ( estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_797 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_program_799 )
      match( START, TOKENS_FOLLOWING_START_IN_program_801 )
      # at line 165:22: ( attributes )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0.between?( BOOL, CHAR ) || look_13_0 == FLOAT || look_13_0 == INTEGER )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 165:23: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_program_804 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13


      # --> action
      $program.add_func(__ID7__.text, "void", 0)
      # <-- action

      # at line 165:78: ( estatutes )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == FOR || look_14_0.between?( ID, IF ) || look_14_0 == INPUT || look_14_0 == PRINT || look_14_0 == WHILE )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 165:79: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_811 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_815 )

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
    # 168:1: variables : ( dec_var | dec_arr | dec_mat ) ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 169:5: ( dec_var | dec_arr | dec_mat )
      # at line 169:5: ( dec_var | dec_arr | dec_mat )
      alt_15 = 3
      look_15_0 = @input.peek( 1 )

      if ( look_15_0.between?( BOOL, CHAR ) || look_15_0 == FLOAT || look_15_0 == INTEGER )
        look_15_1 = @input.peek( 2 )

        if ( look_15_1 == ID )
          look_15_3 = @input.peek( 3 )

          if ( look_15_3 == LB )
            look_15_4 = @input.peek( 4 )

            if ( look_15_4 == C_INT )
              look_15_5 = @input.peek( 5 )

              if ( look_15_5 == RB )
                look_15_6 = @input.peek( 6 )

                if ( look_15_6 == SEMICOLON )
                  alt_15 = 2
                elsif ( look_15_6 == LB )
                  alt_15 = 3
                else
                  raise NoViableAlternative( "", 15, 6 )

                end
              else
                raise NoViableAlternative( "", 15, 5 )

              end
            else
              raise NoViableAlternative( "", 15, 4 )

            end
          elsif ( look_15_3 == COMMA || look_15_3 == SEMICOLON )
            alt_15 = 1
          else
            raise NoViableAlternative( "", 15, 3 )

          end
        else
          raise NoViableAlternative( "", 15, 1 )

        end
      elsif ( look_15_0 == ID )
        alt_15 = 1
      else
        raise NoViableAlternative( "", 15, 0 )

      end
      case alt_15
      when 1
        # at line 169:6: dec_var
        @state.following.push( TOKENS_FOLLOWING_dec_var_IN_variables_829 )
        dec_var
        @state.following.pop

      when 2
        # at line 169:16: dec_arr
        @state.following.push( TOKENS_FOLLOWING_dec_arr_IN_variables_833 )
        dec_arr
        @state.following.pop

      when 3
        # at line 169:26: dec_mat
        @state.following.push( TOKENS_FOLLOWING_dec_mat_IN_variables_837 )
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
    # 172:1: dec_var : type_c ID ( dec_var_2 )* SEMICOLON ;
    #
    def dec_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID9__ = nil
      type_c8 = nil


      begin
      # at line 173:5: type_c ID ( dec_var_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_dec_var_851 )
      type_c8 = type_c
      @state.following.pop

      # --> action
      $varType = ( type_c8 && @input.to_s( type_c8.start, type_c8.stop ) )
      # <-- action

      __ID9__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_855 )

      # --> action
      $program.add_var(__ID9__.text, $varType)
      # <-- action

      # at line 173:83: ( dec_var_2 )*
      while true # decision 16
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == COMMA )
          alt_16 = 1

        end
        case alt_16
        when 1
          # at line 173:83: dec_var_2
          @state.following.push( TOKENS_FOLLOWING_dec_var_2_IN_dec_var_859 )
          dec_var_2
          @state.following.pop

        else
          break # out of loop for decision 16
        end
      end # loop for decision 16

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_862 )

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
    # 176:1: dec_var_2 : COMMA ID ;
    #
    def dec_var_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      __ID10__ = nil


      begin
      # at line 177:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dec_var_2_875 )
      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_2_877 )

      # --> action
      $program.add_var(__ID10__.text, $varType)
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
    # 180:1: dec_arr : type_s ID LB C_INT RB SEMICOLON ;
    #
    def dec_arr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      __ID11__ = nil
      __C_INT13__ = nil
      type_s12 = nil


      begin
      # at line 181:5: type_s ID LB C_INT RB SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_arr_892 )
      type_s12 = type_s
      @state.following.pop
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_arr_894 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_arr_896 )
      __C_INT13__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_arr_898 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_arr_900 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_902 )

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
    # 184:1: dec_mat : type_s ID LB C_INT RB dim_2 SEMICOLON ;
    #
    def dec_mat
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID14__ = nil
      __C_INT16__ = nil
      type_s15 = nil


      begin
      # at line 185:5: type_s ID LB C_INT RB dim_2 SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_mat_917 )
      type_s15 = type_s
      @state.following.pop
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_mat_919 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_mat_921 )
      __C_INT16__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_mat_923 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_mat_925 )
      @state.following.push( TOKENS_FOLLOWING_dim_2_IN_dec_mat_928 )
      dim_2
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_930 )

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
    # 188:1: dim_2 : LB C_INT RB ;
    #
    def dim_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __C_INT17__ = nil


      begin
      # at line 189:5: LB C_INT RB
      match( LB, TOKENS_FOLLOWING_LB_IN_dim_2_945 )
      __C_INT17__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dim_2_947 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dim_2_949 )

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
    # 192:1: attributes : type_s ID ( attributes_2 )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID19__ = nil
      type_s18 = nil


      begin
      # at line 193:5: type_s ID ( attributes_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_964 )
      type_s18 = type_s
      @state.following.pop

      # --> action
      $varType = ( type_s18 && @input.to_s( type_s18.start, type_s18.stop ) )
      # <-- action

      __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_968 )

      # --> action
      $program.add_var(__ID19__.text, $varType)
      # <-- action

      # at line 193:83: ( attributes_2 )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == COMMA )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 193:83: attributes_2
          @state.following.push( TOKENS_FOLLOWING_attributes_2_IN_attributes_972 )
          attributes_2
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_976 )

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
    # 196:1: attributes_2 : COMMA ID ;
    #
    def attributes_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID20__ = nil


      begin
      # at line 197:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_2_989 )
      __ID20__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_2_991 )

      # --> action
      $program.add_var(__ID20__.text, $varType)
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
    # 200:1: parameters : LP ( type_s ID ( parameters_2 )* )? RP ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      __ID21__ = nil
      type_s22 = nil


      begin
      # at line 201:5: LP ( type_s ID ( parameters_2 )* )? RP
      match( LP, TOKENS_FOLLOWING_LP_IN_parameters_1006 )
      # at line 201:8: ( type_s ID ( parameters_2 )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0.between?( BOOL, CHAR ) || look_19_0 == FLOAT || look_19_0 == INTEGER )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 201:9: type_s ID ( parameters_2 )*
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_1009 )
        type_s22 = type_s
        @state.following.pop
        __ID21__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1011 )

        # --> action
        $program.add_var(__ID21__.text, ( type_s22 && @input.to_s( type_s22.start, type_s22.stop ) ))
        # <-- action


        # --> action
        $params += 1
        # <-- action

        # at line 201:77: ( parameters_2 )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 201:79: parameters_2
            @state.following.push( TOKENS_FOLLOWING_parameters_2_IN_parameters_1017 )
            parameters_2
            @state.following.pop

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_parameters_1024 )

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
    # 204:1: parameters_2 : COMMA type_s ID ;
    #
    def parameters_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __ID23__ = nil
      type_s24 = nil


      begin
      # at line 205:6: COMMA type_s ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_2_1038 )
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_2_1040 )
      type_s24 = type_s
      @state.following.pop
      __ID23__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_2_1042 )

      # --> action
      $program.add_var(__ID23__.text, ( type_s24 && @input.to_s( type_s24.start, type_s24.stop ) ))
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
    # 208:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
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
    # 212:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      return_value = TypeCReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 213:5: ( type_s | ID )
      # at line 213:5: ( type_s | ID )
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0.between?( BOOL, CHAR ) || look_20_0 == FLOAT || look_20_0 == INTEGER )
        alt_20 = 1
      elsif ( look_20_0 == ID )
        alt_20 = 2
      else
        raise NoViableAlternative( "", 20, 0 )

      end
      case alt_20
      when 1
        # at line 213:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_1086 )
        type_s
        @state.following.pop

      when 2
        # at line 213:15: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_1090 )

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
    # 216:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      return_value = TypeFReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 217:5: ( type_s | VOID )
      # at line 217:5: ( type_s | VOID )
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0.between?( BOOL, CHAR ) || look_21_0 == FLOAT || look_21_0 == INTEGER )
        alt_21 = 1
      elsif ( look_21_0 == VOID )
        alt_21 = 2
      else
        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 217:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_1105 )
        type_s
        @state.following.pop

      when 2
        # at line 217:15: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_1109 )

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
    # 220:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 221:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_1123 )
      # at line 221:11: ( estatutes )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == FOR || look_22_0.between?( ID, IF ) || look_22_0 == INPUT || look_22_0 == PRINT || look_22_0 == WHILE )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 221:11: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_1125 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1128 )

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
    # 224:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 225:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1141 )
      expression
      @state.following.pop
      # at line 225:16: ( ( AND | OR ) expression )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == AND || look_23_0 == OR )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 225:17: ( AND | OR ) expression
          if @input.peek(1) == AND || @input.peek(1) == OR
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1152 )
          expression
          @state.following.pop

        else
          break # out of loop for decision 23
        end
      end # loop for decision 23


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
    # 228:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 229:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1167 )
      exp
      @state.following.pop
      # at line 229:9: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == EQ || look_24_0.between?( GEQ, GT ) || look_24_0 == LEQ || look_24_0 == LT || look_24_0 == NE )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 229:10: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          if @input.peek(1) == EQ || @input.peek( 1 ).between?( GEQ, GT ) || @input.peek(1) == LEQ || @input.peek(1) == LT || @input.peek(1) == NE
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1194 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 24
        end
      end # loop for decision 24


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
    # 232:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 233:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1209 )
      term
      @state.following.pop
      # at line 233:10: ( ( ADD | SUB ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == ADD || look_25_0 == SUB )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 233:11: ( ADD | SUB ) term
          if @input.peek(1) == ADD || @input.peek(1) == SUB
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1220 )
          term
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
        # trace_out( __method__, 24 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in Foma.g)
    # 236:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      begin
      # at line 237:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1235 )
      factor
      @state.following.pop
      # at line 237:12: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0.between?( MOD, MULT ) )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 237:14: ( MULT | DIV | MOD ) factor
          if @input.peek(1) == DIV || @input.peek( 1 ).between?( MOD, MULT )
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1253 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 26
        end
      end # loop for decision 26


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
    # 240:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      begin
      # at line 241:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 241:5: ( LP super_expression RP | var_cte | func_call | method_call )
      alt_27 = 4
      case look_27 = @input.peek( 1 )
      when LP then alt_27 = 1
      when ID then case look_27 = @input.peek( 2 )
      when LP then alt_27 = 3
      when POINT then alt_27 = 4
      when ADD, AND, COMMA, DIV, EQ, GEQ, GT, LB, LEQ, LT, MOD, MULT, NE, OR, RB, RP, SEMICOLON, SUB then alt_27 = 2
      else
        raise NoViableAlternative( "", 27, 2 )

      end
      when C_BOOL, C_CHAR, C_FLOAT, C_INT then alt_27 = 2
      else
        raise NoViableAlternative( "", 27, 0 )

      end
      case alt_27
      when 1
        # at line 241:6: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1270 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1272 )
        super_expression
        @state.following.pop
        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1274 )

      when 2
        # at line 241:31: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1278 )
        var_cte
        @state.following.pop

      when 3
        # at line 241:41: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1282 )
        func_call
        @state.following.pop

      when 4
        # at line 241:53: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_1286 )
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
    # 244:1: var_cte : ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      begin
      # at line 245:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 245:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      alt_28 = 5
      case look_28 = @input.peek( 1 )
      when ID then alt_28 = 1
      when C_INT then alt_28 = 2
      when C_FLOAT then alt_28 = 3
      when C_CHAR then alt_28 = 4
      when C_BOOL then alt_28 = 5
      else
        raise NoViableAlternative( "", 28, 0 )

      end
      case alt_28
      when 1
        # at line 245:6: var_access
        @state.following.push( TOKENS_FOLLOWING_var_access_IN_var_cte_1301 )
        var_access
        @state.following.pop

      when 2
        # at line 245:19: C_INT
        match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_1305 )

      when 3
        # at line 245:27: C_FLOAT
        match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1309 )

      when 4
        # at line 245:37: C_CHAR
        match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1313 )

      when 5
        # at line 245:46: C_BOOL
        match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1317 )

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
    # 248:1: var_access : ID ( LB exp RB ( LB exp RB )? )? ;
    #
    def var_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      begin
      # at line 249:5: ID ( LB exp RB ( LB exp RB )? )?
      match( ID, TOKENS_FOLLOWING_ID_IN_var_access_1331 )
      # at line 249:8: ( LB exp RB ( LB exp RB )? )?
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == LB )
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 249:9: LB exp RB ( LB exp RB )?
        match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1334 )
        @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1336 )
        exp
        @state.following.pop
        match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1338 )
        # at line 249:19: ( LB exp RB )?
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == LB )
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 249:20: LB exp RB
          match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1341 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1343 )
          exp
          @state.following.pop
          match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1345 )

        end

      end

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
    # parser rule estatutes
    #
    # (in Foma.g)
    # 252:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 253:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      # at line 253:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      alt_31 = 8
      case look_31 = @input.peek( 1 )
      when ID then case look_31 = @input.peek( 2 )
      when LP then alt_31 = 7
      when POINT then alt_31 = 8
      when ASSIGN, LB then alt_31 = 1
      else
        raise NoViableAlternative( "", 31, 1 )

      end
      when IF then alt_31 = 2
      when WHILE then alt_31 = 3
      when FOR then alt_31 = 4
      when PRINT then alt_31 = 5
      when INPUT then alt_31 = 6
      else
        raise NoViableAlternative( "", 31, 0 )

      end
      case alt_31
      when 1
        # at line 253:6: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_1363 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1365 )

      when 2
        # at line 253:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_1369 )
        condition
        @state.following.pop

      when 3
        # at line 253:37: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_1373 )
        while_loop
        @state.following.pop

      when 4
        # at line 253:50: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_1377 )
        for_loop
        @state.following.pop

      when 5
        # at line 253:61: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_1381 )
        print
        @state.following.pop

      when 6
        # at line 253:69: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_1385 )
        input
        @state.following.pop

      when 7
        # at line 253:77: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_1389 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1391 )

      when 8
        # at line 253:99: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_1395 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1397 )

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
    # parser rule estatutes_f
    #
    # (in Foma.g)
    # 256:1: estatutes_f : ( estatutes | r_return ) ;
    #
    def estatutes_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      begin
      # at line 257:5: ( estatutes | r_return )
      # at line 257:5: ( estatutes | r_return )
      alt_32 = 2
      look_32_0 = @input.peek( 1 )

      if ( look_32_0 == FOR || look_32_0.between?( ID, IF ) || look_32_0 == INPUT || look_32_0 == PRINT || look_32_0 == WHILE )
        alt_32 = 1
      elsif ( look_32_0 == RETURN )
        alt_32 = 2
      else
        raise NoViableAlternative( "", 32, 0 )

      end
      case alt_32
      when 1
        # at line 257:6: estatutes
        @state.following.push( TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1413 )
        estatutes
        @state.following.pop

      when 2
        # at line 257:18: r_return
        @state.following.push( TOKENS_FOLLOWING_r_return_IN_estatutes_f_1417 )
        r_return
        @state.following.pop

      end

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
    # parser rule assign
    #
    # (in Foma.g)
    # 260:1: assign : var_access ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      begin
      # at line 261:5: var_access ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_var_access_IN_assign_1431 )
      var_access
      @state.following.pop
      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_1433 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_1435 )
      super_expression
      @state.following.pop

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
    # parser rule condition
    #
    # (in Foma.g)
    # 264:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )


      begin
      # at line 265:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1448 )
      match( LP, TOKENS_FOLLOWING_LP_IN_condition_1450 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1452 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_condition_1454 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1456 )
      block
      @state.following.pop
      # at line 265:37: ( ELSE block )?
      alt_33 = 2
      look_33_0 = @input.peek( 1 )

      if ( look_33_0 == ELSE )
        alt_33 = 1
      end
      case alt_33
      when 1
        # at line 265:38: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1459 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1461 )
        block
        @state.following.pop

      end

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
    # parser rule while_loop
    #
    # (in Foma.g)
    # 268:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )


      begin
      # at line 269:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1476 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_1478 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1480 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_1482 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1484 )
      block
      @state.following.pop

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
    # parser rule for_loop
    #
    # (in Foma.g)
    # 272:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )


      begin
      # at line 273:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1497 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_1499 )
      # at line 273:12: ( assign )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == ID )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 273:12: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1501 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1504 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_1506 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1508 )
      # at line 273:57: ( assign )?
      alt_35 = 2
      look_35_0 = @input.peek( 1 )

      if ( look_35_0 == ID )
        alt_35 = 1
      end
      case alt_35
      when 1
        # at line 273:57: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1510 )
        assign
        @state.following.pop

      end
      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_1513 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1515 )
      block
      @state.following.pop

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
    # parser rule print
    #
    # (in Foma.g)
    # 276:1: print : PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )


      begin
      # at line 277:5: PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_1528 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_1530 )
      # at line 277:14: ( super_expression ( COMMA super_expression )* )
      # at line 277:15: super_expression ( COMMA super_expression )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1533 )
      super_expression
      @state.following.pop
      # at line 277:32: ( COMMA super_expression )*
      while true # decision 36
        alt_36 = 2
        look_36_0 = @input.peek( 1 )

        if ( look_36_0 == COMMA )
          alt_36 = 1

        end
        case alt_36
        when 1
          # at line 277:34: COMMA super_expression
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_1537 )
          @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1539 )
          super_expression
          @state.following.pop

        else
          break # out of loop for decision 36
        end
      end # loop for decision 36


      match( RP, TOKENS_FOLLOWING_RP_IN_print_1545 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_1547 )

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
    # parser rule input
    #
    # (in Foma.g)
    # 280:1: input : INPUT LP ID RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )


      begin
      # at line 281:5: INPUT LP ID RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_1560 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_1562 )
      match( ID, TOKENS_FOLLOWING_ID_IN_input_1564 )
      match( RP, TOKENS_FOLLOWING_RP_IN_input_1566 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_1568 )

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
    # parser rule func_call
    #
    # (in Foma.g)
    # 284:1: func_call : ID LP ( ID ( COMMA ID )* )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )


      begin
      # at line 285:5: ID LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1581 )
      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_1583 )
      # at line 285:11: ( ID ( COMMA ID )* )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ID )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 285:12: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1586 )
        # at line 285:15: ( COMMA ID )*
        while true # decision 37
          alt_37 = 2
          look_37_0 = @input.peek( 1 )

          if ( look_37_0 == COMMA )
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 285:16: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_1589 )
            match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1591 )

          else
            break # out of loop for decision 37
          end
        end # loop for decision 37


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_1597 )

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
    # parser rule method_call
    #
    # (in Foma.g)
    # 288:1: method_call : ID POINT LP ( ID ( COMMA ID )* )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )


      begin
      # at line 289:5: ID POINT LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1610 )
      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_1612 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_1614 )
      # at line 289:17: ( ID ( COMMA ID )* )?
      alt_40 = 2
      look_40_0 = @input.peek( 1 )

      if ( look_40_0 == ID )
        alt_40 = 1
      end
      case alt_40
      when 1
        # at line 289:18: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1617 )
        # at line 289:21: ( COMMA ID )*
        while true # decision 39
          alt_39 = 2
          look_39_0 = @input.peek( 1 )

          if ( look_39_0 == COMMA )
            alt_39 = 1

          end
          case alt_39
          when 1
            # at line 289:22: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_1620 )
            match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1622 )

          else
            break # out of loop for decision 39
          end
        end # loop for decision 39


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_1628 )

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
    # parser rule r_return
    #
    # (in Foma.g)
    # 292:1: r_return : RETURN super_expression SEMICOLON ;
    #
    def r_return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )


      begin
      # at line 293:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_r_return_1640 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_r_return_1642 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1644 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 39 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_584 = Set[ 7, 8, 9, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_variables_IN_commence_592 = Set[ 7, 8, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_function_IN_commence_599 = Set[ 21, 43 ]
    TOKENS_FOLLOWING_program_IN_commence_603 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_624 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_626 = Set[ 26, 50 ]
    TOKENS_FOLLOWING_inherits_IN_r_class_631 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_r_class_634 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_639 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_647 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_method_IN_r_class_652 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_660 = Set[ 1 ]
    TOKENS_FOLLOWING_INHER_IN_inherits_674 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_inherits_676 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_691 = Set[ 7, 8, 19, 28, 52 ]
    TOKENS_FOLLOWING_type_f_IN_function_693 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_695 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_function_697 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_function_699 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_function_702 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_function_709 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_function_713 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_726 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_728 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_method_730 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_method_732 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_method_735 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_method_745 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_method_750 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_764 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_766 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_constructor_769 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_constructor_772 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_constructor_777 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_784 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_797 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_799 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_program_801 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_program_804 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_program_811 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_program_815 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_var_IN_variables_829 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_arr_IN_variables_833 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_mat_IN_variables_837 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_dec_var_851 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_855 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_dec_var_2_IN_dec_var_859 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_862 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_dec_var_2_875 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_2_877 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_arr_892 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_arr_894 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_arr_896 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_arr_898 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_arr_900 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_902 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_mat_917 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_mat_919 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_mat_921 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_mat_923 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_mat_925 = Set[ 29 ]
    TOKENS_FOLLOWING_dim_2_IN_dec_mat_928 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_930 = Set[ 1 ]
    TOKENS_FOLLOWING_LB_IN_dim_2_945 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dim_2_947 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dim_2_949 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_964 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_968 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_attributes_2_IN_attributes_972 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_976 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_2_989 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_2_991 = Set[ 1 ]
    TOKENS_FOLLOWING_LP_IN_parameters_1006 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_1009 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1011 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_parameters_2_IN_parameters_1017 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_parameters_1024 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_2_1038 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_2_1040 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_2_1042 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_1086 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_1090 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_1105 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_1109 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_1123 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_block_1125 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_block_1128 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1141 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_set_IN_super_expression_1144 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1152 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_exp_IN_expression_1167 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_set_IN_expression_1170 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_expression_1194 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1209 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_set_IN_exp_1212 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_term_IN_exp_1220 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_factor_IN_term_1235 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_set_IN_term_1239 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_1253 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1270 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1272 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_factor_1274 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1278 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1282 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_1286 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_var_cte_1301 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_1305 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1309 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1313 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1317 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_var_access_1331 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1334 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1336 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1338 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1341 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1343 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1345 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_1363 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1365 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_1369 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_1373 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_1377 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_1381 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_1385 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_1389 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1391 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_1395 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1397 = Set[ 1 ]
    TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1413 = Set[ 1 ]
    TOKENS_FOLLOWING_r_return_IN_estatutes_f_1417 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_assign_1431 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_1433 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_1435 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1448 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_1450 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1452 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_condition_1454 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1456 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1459 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1461 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1476 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_1478 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1480 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_1482 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1484 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1497 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_1499 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1501 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1504 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_1506 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1508 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1510 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_1513 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1515 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_1528 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_1530 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1533 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_print_1537 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1539 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_print_1545 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_1547 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_1560 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_1562 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_input_1564 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_input_1566 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_1568 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1581 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_1583 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1586 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_1589 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1591 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_func_call_1597 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1610 = Set[ 41 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_1612 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_1614 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1617 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_1620 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1622 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_call_1628 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_r_return_1640 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_r_return_1642 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1644 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
