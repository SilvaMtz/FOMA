#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-18 17:21:25
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
      $scope
      $varId
      $varType
      $dimTemp

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 140:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 141:5: ( r_class )* ( variables )* ( function )* program
      # --> action
      $scope = "class"
      # <-- action

      # at line 141:24: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 141:26: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_commence_585 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1


      # --> action
      $scope = "global"
      # <-- action

      # at line 141:59: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 141:60: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_commence_594 )
          variables
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2


      # --> action
      $program.add_func("global", "void", 0)
      # <-- action

      # at line 141:114: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 141:115: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_commence_601 )
          function
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      @state.following.push( TOKENS_FOLLOWING_program_IN_commence_605 )
      program
      @state.following.pop

      # --> action
      $program.display
      # <-- action


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
    # 145:1: r_class : CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 146:5: CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_627 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_629 )

      # --> action
      $classId = __ID1__.text
      # <-- action

      # at line 146:38: ( inherits )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 146:38: inherits
        @state.following.push( TOKENS_FOLLOWING_inherits_IN_r_class_634 )
        inherits
        @state.following.pop

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_637 )
      # at line 146:55: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 146:57: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_642 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5


      # --> action
      $program.add_attrs()
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_650 )
      constructor
      @state.following.pop
      # at line 146:109: ( method )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( BOOL, CHAR ) || look_6_0 == FLOAT || look_6_0 == INTEGER || look_6_0 == VOID )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 146:111: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_655 )
          method
          @state.following.pop

        else
          break # out of loop for decision 6
        end
      end # loop for decision 6


      # --> action
      $program.add_class($classId)
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_663 )

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
    # 149:1: inherits : ( INHER ID ) ;
    #
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 150:4: ( INHER ID )
      # at line 150:4: ( INHER ID )
      # at line 150:6: INHER ID
      match( INHER, TOKENS_FOLLOWING_INHER_IN_inherits_677 )
      match( ID, TOKENS_FOLLOWING_ID_IN_inherits_679 )


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
    # 153:1: function : FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID2__ = nil
      type_f3 = nil


      begin
      # at line 154:5: FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_694 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_697 )
      type_f3 = type_f
      @state.following.pop
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_699 )

      # --> action
      $scope = __ID2__.text
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_704 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_function_706 )
      # at line 154:64: ( attributes )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 154:65: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_function_709 )
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

      # at line 154:146: ( estatutes_f )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == FOR || look_8_0.between?( ID, IF ) || look_8_0 == INPUT || look_8_0 == PRINT || look_8_0 == RETURN || look_8_0 == WHILE )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 154:147: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_function_716 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_720 )

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
    # 157:1: method : type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID4__ = nil
      type_f5 = nil


      begin
      # at line 158:5: type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_733 )
      type_f5 = type_f
      @state.following.pop
      __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_735 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_737 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_method_739 )
      # at line 158:32: ( attributes )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( BOOL, CHAR ) || look_9_0 == FLOAT || look_9_0 == INTEGER )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 158:33: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_method_742 )
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

      # at line 158:117: ( estatutes_f )*
      while true # decision 10
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == FOR || look_10_0.between?( ID, IF ) || look_10_0 == INPUT || look_10_0 == PRINT || look_10_0 == RETURN || look_10_0 == WHILE )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 158:118: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_method_752 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_757 )

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
    # 161:1: constructor : ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __ID6__ = nil


      begin
      # at line 162:6: ID parameters START ( attributes )* ( estatutes )* R_END
      __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_constructor_771 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_773 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_constructor_776 )
      # at line 162:27: ( attributes )*
      while true # decision 11
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0.between?( BOOL, CHAR ) || look_11_0 == FLOAT || look_11_0 == INTEGER )
          alt_11 = 1

        end
        case alt_11
        when 1
          # at line 162:28: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_constructor_779 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 11
        end
      end # loop for decision 11

      # at line 162:41: ( estatutes )*
      while true # decision 12
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == FOR || look_12_0.between?( ID, IF ) || look_12_0 == INPUT || look_12_0 == PRINT || look_12_0 == WHILE )
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 162:42: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_constructor_784 )
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

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_791 )

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
    # 165:1: program : PROGRAM ID START ( attributes )* ( estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID7__ = nil


      begin
      # at line 166:5: PROGRAM ID START ( attributes )* ( estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_804 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_program_806 )
      match( START, TOKENS_FOLLOWING_START_IN_program_808 )
      # at line 166:22: ( attributes )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0.between?( BOOL, CHAR ) || look_13_0 == FLOAT || look_13_0 == INTEGER )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 166:23: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_program_811 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13


      # --> action
      $program.add_func(__ID7__.text, "void", 0)
      # <-- action

      # at line 166:78: ( estatutes )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == FOR || look_14_0.between?( ID, IF ) || look_14_0 == INPUT || look_14_0 == PRINT || look_14_0 == WHILE )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 166:79: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_818 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_822 )

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
    # 169:1: variables : ( dec_var | dec_arr | dec_mat ) ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 170:5: ( dec_var | dec_arr | dec_mat )
      # at line 170:5: ( dec_var | dec_arr | dec_mat )
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
        # at line 170:6: dec_var
        @state.following.push( TOKENS_FOLLOWING_dec_var_IN_variables_836 )
        dec_var
        @state.following.pop

      when 2
        # at line 170:16: dec_arr
        @state.following.push( TOKENS_FOLLOWING_dec_arr_IN_variables_840 )
        dec_arr
        @state.following.pop

      when 3
        # at line 170:26: dec_mat
        @state.following.push( TOKENS_FOLLOWING_dec_mat_IN_variables_844 )
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
    # 173:1: dec_var : type_c ID ( dec_var_2 )* SEMICOLON ;
    #
    def dec_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID9__ = nil
      type_c8 = nil


      begin
      # at line 174:5: type_c ID ( dec_var_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_dec_var_858 )
      type_c8 = type_c
      @state.following.pop

      # --> action
      $varType = ( type_c8 && @input.to_s( type_c8.start, type_c8.stop ) )
      # <-- action

      __ID9__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_862 )

      # --> action
      $program.add_var(__ID9__.text, $varType, $scope)
      # <-- action

      # at line 174:92: ( dec_var_2 )*
      while true # decision 16
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == COMMA )
          alt_16 = 1

        end
        case alt_16
        when 1
          # at line 174:92: dec_var_2
          @state.following.push( TOKENS_FOLLOWING_dec_var_2_IN_dec_var_866 )
          dec_var_2
          @state.following.pop

        else
          break # out of loop for decision 16
        end
      end # loop for decision 16

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_869 )

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
    # 177:1: dec_var_2 : COMMA ID ;
    #
    def dec_var_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      __ID10__ = nil


      begin
      # at line 178:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dec_var_2_882 )
      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_2_884 )

      # --> action
      $program.add_var(__ID10__.text, $varType, $scope)
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
    # 181:1: dec_arr : type_s ID LB C_INT RB SEMICOLON ;
    #
    def dec_arr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      __ID11__ = nil
      __C_INT13__ = nil
      type_s12 = nil


      begin
      # at line 182:5: type_s ID LB C_INT RB SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_arr_899 )
      type_s12 = type_s
      @state.following.pop
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_arr_901 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_arr_903 )
      __C_INT13__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_arr_905 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_arr_907 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_909 )

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
    # 185:1: dec_mat : type_s ID LB C_INT RB dim_2 SEMICOLON ;
    #
    def dec_mat
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID14__ = nil
      __C_INT16__ = nil
      type_s15 = nil


      begin
      # at line 186:5: type_s ID LB C_INT RB dim_2 SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_mat_924 )
      type_s15 = type_s
      @state.following.pop
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_mat_926 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_mat_928 )
      __C_INT16__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_mat_930 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_mat_932 )
      @state.following.push( TOKENS_FOLLOWING_dim_2_IN_dec_mat_935 )
      dim_2
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_937 )

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
    # 189:1: dim_2 : LB C_INT RB ;
    #
    def dim_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __C_INT17__ = nil


      begin
      # at line 190:5: LB C_INT RB
      match( LB, TOKENS_FOLLOWING_LB_IN_dim_2_952 )
      __C_INT17__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dim_2_954 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dim_2_956 )

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
    # 193:1: attributes : type_s ID ( attributes_2 )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID19__ = nil
      type_s18 = nil


      begin
      # at line 194:5: type_s ID ( attributes_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_971 )
      type_s18 = type_s
      @state.following.pop

      # --> action
      $varType = ( type_s18 && @input.to_s( type_s18.start, type_s18.stop ) )
      # <-- action

      __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_975 )

      # --> action
      $program.add_var(__ID19__.text, $varType, $scope)
      # <-- action

      # at line 194:92: ( attributes_2 )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == COMMA )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 194:92: attributes_2
          @state.following.push( TOKENS_FOLLOWING_attributes_2_IN_attributes_979 )
          attributes_2
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_983 )

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
    # 197:1: attributes_2 : COMMA ID ;
    #
    def attributes_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID20__ = nil


      begin
      # at line 198:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_2_996 )
      __ID20__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_2_998 )

      # --> action
      $program.add_var(__ID20__.text, $varType, $scope)
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
    # 201:1: parameters : LP ( type_s ID ( parameters_2 )* )? RP ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      __ID21__ = nil
      type_s22 = nil


      begin
      # at line 202:5: LP ( type_s ID ( parameters_2 )* )? RP
      match( LP, TOKENS_FOLLOWING_LP_IN_parameters_1013 )
      # at line 202:8: ( type_s ID ( parameters_2 )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0.between?( BOOL, CHAR ) || look_19_0 == FLOAT || look_19_0 == INTEGER )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 202:9: type_s ID ( parameters_2 )*
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_1016 )
        type_s22 = type_s
        @state.following.pop
        __ID21__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1018 )

        # --> action
        $program.add_var(__ID21__.text, ( type_s22 && @input.to_s( type_s22.start, type_s22.stop ) ), $scope)
        # <-- action


        # --> action
        $params += 1
        # <-- action

        # at line 202:86: ( parameters_2 )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 202:88: parameters_2
            @state.following.push( TOKENS_FOLLOWING_parameters_2_IN_parameters_1024 )
            parameters_2
            @state.following.pop

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_parameters_1031 )

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
    # 205:1: parameters_2 : COMMA type_s ID ;
    #
    def parameters_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __ID23__ = nil
      type_s24 = nil


      begin
      # at line 206:6: COMMA type_s ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_2_1045 )
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_2_1047 )
      type_s24 = type_s
      @state.following.pop
      __ID23__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_2_1049 )

      # --> action
      $program.add_var(__ID23__.text, ( type_s24 && @input.to_s( type_s24.start, type_s24.stop ) ), $scope)
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
    # 209:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
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
    # 213:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      return_value = TypeCReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 214:5: ( type_s | ID )
      # at line 214:5: ( type_s | ID )
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
        # at line 214:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_1093 )
        type_s
        @state.following.pop

      when 2
        # at line 214:15: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_1097 )

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
    # 217:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      return_value = TypeFReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 218:5: ( type_s | VOID )
      # at line 218:5: ( type_s | VOID )
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
        # at line 218:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_1112 )
        type_s
        @state.following.pop

      when 2
        # at line 218:15: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_1116 )

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
    # 221:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 222:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_1130 )
      # at line 222:11: ( estatutes )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == FOR || look_22_0.between?( ID, IF ) || look_22_0 == INPUT || look_22_0 == PRINT || look_22_0 == WHILE )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 222:11: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_1132 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1135 )

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
    # 225:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 226:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1148 )
      expression
      @state.following.pop
      # at line 226:16: ( ( AND | OR ) expression )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == AND || look_23_0 == OR )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 226:17: ( AND | OR ) expression
          if @input.peek(1) == AND || @input.peek(1) == OR
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1159 )
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
    # 229:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 230:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1174 )
      exp
      @state.following.pop
      # at line 230:9: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == EQ || look_24_0.between?( GEQ, GT ) || look_24_0 == LEQ || look_24_0 == LT || look_24_0 == NE )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 230:10: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          if @input.peek(1) == EQ || @input.peek( 1 ).between?( GEQ, GT ) || @input.peek(1) == LEQ || @input.peek(1) == LT || @input.peek(1) == NE
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1201 )
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
    # 233:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 234:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1216 )
      term
      @state.following.pop
      # at line 234:10: ( ( ADD | SUB ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == ADD || look_25_0 == SUB )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 234:11: ( ADD | SUB ) term
          if @input.peek(1) == ADD || @input.peek(1) == SUB
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1227 )
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
    # 237:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      begin
      # at line 238:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1242 )
      factor
      @state.following.pop
      # at line 238:12: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0.between?( MOD, MULT ) )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 238:14: ( MULT | DIV | MOD ) factor
          if @input.peek(1) == DIV || @input.peek( 1 ).between?( MOD, MULT )
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1260 )
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
    # 241:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      begin
      # at line 242:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 242:5: ( LP super_expression RP | var_cte | func_call | method_call )
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
        # at line 242:6: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1277 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1279 )
        super_expression
        @state.following.pop
        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1281 )

      when 2
        # at line 242:31: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1285 )
        var_cte
        @state.following.pop

      when 3
        # at line 242:41: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1289 )
        func_call
        @state.following.pop

      when 4
        # at line 242:53: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_1293 )
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
    # 245:1: var_cte : ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      begin
      # at line 246:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 246:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
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
        # at line 246:6: var_access
        @state.following.push( TOKENS_FOLLOWING_var_access_IN_var_cte_1308 )
        var_access
        @state.following.pop

      when 2
        # at line 246:19: C_INT
        match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_1312 )

      when 3
        # at line 246:27: C_FLOAT
        match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1316 )

      when 4
        # at line 246:37: C_CHAR
        match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1320 )

      when 5
        # at line 246:46: C_BOOL
        match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1324 )

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
    # 249:1: var_access : ID ( LB exp RB ( LB exp RB )? )? ;
    #
    def var_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      begin
      # at line 250:5: ID ( LB exp RB ( LB exp RB )? )?
      match( ID, TOKENS_FOLLOWING_ID_IN_var_access_1338 )
      # at line 250:8: ( LB exp RB ( LB exp RB )? )?
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == LB )
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 250:9: LB exp RB ( LB exp RB )?
        match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1341 )
        @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1343 )
        exp
        @state.following.pop
        match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1345 )
        # at line 250:19: ( LB exp RB )?
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == LB )
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 250:20: LB exp RB
          match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1348 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1350 )
          exp
          @state.following.pop
          match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1352 )

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
    # 253:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 254:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      # at line 254:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
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
        # at line 254:6: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_1370 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1372 )

      when 2
        # at line 254:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_1376 )
        condition
        @state.following.pop

      when 3
        # at line 254:37: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_1380 )
        while_loop
        @state.following.pop

      when 4
        # at line 254:50: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_1384 )
        for_loop
        @state.following.pop

      when 5
        # at line 254:61: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_1388 )
        print
        @state.following.pop

      when 6
        # at line 254:69: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_1392 )
        input
        @state.following.pop

      when 7
        # at line 254:77: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_1396 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1398 )

      when 8
        # at line 254:99: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_1402 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1404 )

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
    # 257:1: estatutes_f : ( estatutes | r_return ) ;
    #
    def estatutes_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      begin
      # at line 258:5: ( estatutes | r_return )
      # at line 258:5: ( estatutes | r_return )
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
        # at line 258:6: estatutes
        @state.following.push( TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1420 )
        estatutes
        @state.following.pop

      when 2
        # at line 258:18: r_return
        @state.following.push( TOKENS_FOLLOWING_r_return_IN_estatutes_f_1424 )
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
    # 261:1: assign : var_access ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      begin
      # at line 262:5: var_access ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_var_access_IN_assign_1438 )
      var_access
      @state.following.pop
      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_1440 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_1442 )
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
    # 265:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )


      begin
      # at line 266:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1455 )
      match( LP, TOKENS_FOLLOWING_LP_IN_condition_1457 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1459 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_condition_1461 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1463 )
      block
      @state.following.pop
      # at line 266:37: ( ELSE block )?
      alt_33 = 2
      look_33_0 = @input.peek( 1 )

      if ( look_33_0 == ELSE )
        alt_33 = 1
      end
      case alt_33
      when 1
        # at line 266:38: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1466 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1468 )
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
    # 269:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )


      begin
      # at line 270:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1483 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_1485 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1487 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_1489 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1491 )
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
    # 273:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )


      begin
      # at line 274:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1504 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_1506 )
      # at line 274:12: ( assign )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == ID )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 274:12: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1508 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1511 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_1513 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1515 )
      # at line 274:57: ( assign )?
      alt_35 = 2
      look_35_0 = @input.peek( 1 )

      if ( look_35_0 == ID )
        alt_35 = 1
      end
      case alt_35
      when 1
        # at line 274:57: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1517 )
        assign
        @state.following.pop

      end
      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_1520 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1522 )
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
    # 277:1: print : PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )


      begin
      # at line 278:5: PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_1535 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_1537 )
      # at line 278:14: ( super_expression ( COMMA super_expression )* )
      # at line 278:15: super_expression ( COMMA super_expression )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1540 )
      super_expression
      @state.following.pop
      # at line 278:32: ( COMMA super_expression )*
      while true # decision 36
        alt_36 = 2
        look_36_0 = @input.peek( 1 )

        if ( look_36_0 == COMMA )
          alt_36 = 1

        end
        case alt_36
        when 1
          # at line 278:34: COMMA super_expression
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_1544 )
          @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1546 )
          super_expression
          @state.following.pop

        else
          break # out of loop for decision 36
        end
      end # loop for decision 36


      match( RP, TOKENS_FOLLOWING_RP_IN_print_1552 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_1554 )

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
    # 281:1: input : INPUT LP ID RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )


      begin
      # at line 282:5: INPUT LP ID RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_1567 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_1569 )
      match( ID, TOKENS_FOLLOWING_ID_IN_input_1571 )
      match( RP, TOKENS_FOLLOWING_RP_IN_input_1573 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_1575 )

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
    # 285:1: func_call : ID LP ( ID ( COMMA ID )* )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )


      begin
      # at line 286:5: ID LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1588 )
      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_1590 )
      # at line 286:11: ( ID ( COMMA ID )* )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ID )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 286:12: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1593 )
        # at line 286:15: ( COMMA ID )*
        while true # decision 37
          alt_37 = 2
          look_37_0 = @input.peek( 1 )

          if ( look_37_0 == COMMA )
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 286:16: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_1596 )
            match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1598 )

          else
            break # out of loop for decision 37
          end
        end # loop for decision 37


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_1604 )

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
    # 289:1: method_call : ID POINT LP ( ID ( COMMA ID )* )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )


      begin
      # at line 290:5: ID POINT LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1617 )
      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_1619 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_1621 )
      # at line 290:17: ( ID ( COMMA ID )* )?
      alt_40 = 2
      look_40_0 = @input.peek( 1 )

      if ( look_40_0 == ID )
        alt_40 = 1
      end
      case alt_40
      when 1
        # at line 290:18: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1624 )
        # at line 290:21: ( COMMA ID )*
        while true # decision 39
          alt_39 = 2
          look_39_0 = @input.peek( 1 )

          if ( look_39_0 == COMMA )
            alt_39 = 1

          end
          case alt_39
          when 1
            # at line 290:22: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_1627 )
            match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1629 )

          else
            break # out of loop for decision 39
          end
        end # loop for decision 39


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_1635 )

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
    # 293:1: r_return : RETURN super_expression SEMICOLON ;
    #
    def r_return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )


      begin
      # at line 294:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_r_return_1647 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_r_return_1649 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1651 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 39 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_585 = Set[ 7, 8, 9, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_variables_IN_commence_594 = Set[ 7, 8, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_function_IN_commence_601 = Set[ 21, 43 ]
    TOKENS_FOLLOWING_program_IN_commence_605 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_627 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_629 = Set[ 26, 50 ]
    TOKENS_FOLLOWING_inherits_IN_r_class_634 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_r_class_637 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_642 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_650 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_method_IN_r_class_655 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_663 = Set[ 1 ]
    TOKENS_FOLLOWING_INHER_IN_inherits_677 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_inherits_679 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_694 = Set[ 7, 8, 19, 28, 52 ]
    TOKENS_FOLLOWING_type_f_IN_function_697 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_699 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_function_704 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_function_706 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_function_709 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_function_716 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_function_720 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_733 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_735 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_method_737 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_method_739 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_method_742 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_method_752 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_method_757 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_771 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_773 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_constructor_776 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_constructor_779 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_constructor_784 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_791 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_804 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_806 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_program_808 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_program_811 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_program_818 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_program_822 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_var_IN_variables_836 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_arr_IN_variables_840 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_mat_IN_variables_844 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_dec_var_858 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_862 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_dec_var_2_IN_dec_var_866 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_869 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_dec_var_2_882 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_2_884 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_arr_899 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_arr_901 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_arr_903 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_arr_905 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_arr_907 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_909 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_mat_924 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_mat_926 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_mat_928 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_mat_930 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_mat_932 = Set[ 29 ]
    TOKENS_FOLLOWING_dim_2_IN_dec_mat_935 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_937 = Set[ 1 ]
    TOKENS_FOLLOWING_LB_IN_dim_2_952 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dim_2_954 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dim_2_956 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_971 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_975 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_attributes_2_IN_attributes_979 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_983 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_2_996 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_2_998 = Set[ 1 ]
    TOKENS_FOLLOWING_LP_IN_parameters_1013 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_1016 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1018 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_parameters_2_IN_parameters_1024 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_parameters_1031 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_2_1045 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_2_1047 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_2_1049 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_1093 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_1097 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_1112 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_1116 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_1130 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_block_1132 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_block_1135 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1148 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_set_IN_super_expression_1151 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1159 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_exp_IN_expression_1174 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_set_IN_expression_1177 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_expression_1201 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1216 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_set_IN_exp_1219 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_term_IN_exp_1227 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_factor_IN_term_1242 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_set_IN_term_1246 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_1260 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1277 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1279 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_factor_1281 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1285 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1289 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_1293 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_var_cte_1308 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_1312 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1316 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1320 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1324 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_var_access_1338 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1341 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1343 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1345 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1348 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1350 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1352 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_1370 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1372 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_1376 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_1380 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_1384 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_1388 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_1392 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_1396 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1398 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_1402 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1404 = Set[ 1 ]
    TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1420 = Set[ 1 ]
    TOKENS_FOLLOWING_r_return_IN_estatutes_f_1424 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_assign_1438 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_1440 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_1442 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1455 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_1457 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1459 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_condition_1461 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1463 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1466 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1468 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1483 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_1485 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1487 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_1489 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1491 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1504 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_1506 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1508 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1511 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_1513 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1515 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1517 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_1520 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1522 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_1535 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_1537 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1540 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_print_1544 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1546 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_print_1552 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_1554 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_1567 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_1569 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_input_1571 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_input_1573 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_1575 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1588 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_1590 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1593 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_1596 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1598 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_func_call_1604 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1617 = Set[ 41 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_1619 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_1621 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1624 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_1627 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1629 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_call_1635 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_r_return_1647 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_r_return_1649 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1651 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
