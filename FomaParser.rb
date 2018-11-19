#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-19 15:07:42
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
                     :print_2, :input, :func_call, :method_call, :r_return ].freeze

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
      $cuads = CuadruplosTable.new()
      $params = 0
      $classId
      $scope
      $varId
      $varType
      $dimTemp
      $numTemp

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 143:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 144:5: ( r_class )* ( variables )* ( function )* program
      # --> action
      $scope = "class"
      # <-- action

      # at line 144:25: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 144:26: r_class
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

      # at line 145:26: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 145:27: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_commence_596 )
          variables
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2


      # --> action
      $program.add_func("global", "void", 0, "NA")
      # <-- action

      # at line 146:5: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 146:6: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_commence_607 )
          function
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      @state.following.push( TOKENS_FOLLOWING_program_IN_commence_615 )
      program
      @state.following.pop

      # --> action
      $program.display
      # <-- action


      # --> action
      $cuads.display
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
    # 151:1: r_class : CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 152:5: CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_639 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_641 )

      # --> action
      $classId = __ID1__.text
      # <-- action

      # at line 152:38: ( inherits )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 152:38: inherits
        @state.following.push( TOKENS_FOLLOWING_inherits_IN_r_class_646 )
        inherits
        @state.following.pop

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_649 )
      # at line 152:55: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 152:57: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_654 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5


      # --> action
      $program.add_attrs()
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_662 )
      constructor
      @state.following.pop
      # at line 152:109: ( method )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( BOOL, CHAR ) || look_6_0 == FLOAT || look_6_0 == INTEGER || look_6_0 == VOID )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 152:111: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_667 )
          method
          @state.following.pop

        else
          break # out of loop for decision 6
        end
      end # loop for decision 6


      # --> action
      $program.add_class($classId)
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_675 )

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
    # 155:1: inherits : ( INHER ID ) ;
    #
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 156:4: ( INHER ID )
      # at line 156:4: ( INHER ID )
      # at line 156:6: INHER ID
      match( INHER, TOKENS_FOLLOWING_INHER_IN_inherits_689 )
      match( ID, TOKENS_FOLLOWING_ID_IN_inherits_691 )


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
    # 159:1: function : FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID2__ = nil
      type_f3 = nil


      begin
      # at line 160:5: FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_706 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_710 )
      type_f3 = type_f
      @state.following.pop
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_712 )

      # --> action
      $scope = __ID2__.text
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_717 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_function_719 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 160:92: ( attributes )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 160:93: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_function_725 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7


      # --> action
      $program.add_func(__ID2__.text, ( type_f3 && @input.to_s( type_f3.start, type_f3.stop ) ), $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 160:185: ( estatutes_f )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == FOR || look_8_0.between?( ID, IF ) || look_8_0 == INPUT || look_8_0 == PRINT || look_8_0 == RETURN || look_8_0 == WHILE )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 160:186: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_function_732 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_736 )

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
    # 163:1: method : type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID4__ = nil
      type_f5 = nil


      begin
      # at line 164:5: type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_749 )
      type_f5 = type_f
      @state.following.pop
      __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_751 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_753 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_method_755 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 164:58: ( attributes )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( BOOL, CHAR ) || look_9_0 == FLOAT || look_9_0 == INTEGER )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 164:59: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_method_760 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9


      # --> action
      $program.add_func(__ID4__.text, ( type_f5 && @input.to_s( type_f5.start, type_f5.stop ) ), $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 164:154: ( estatutes_f )*
      while true # decision 10
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == FOR || look_10_0.between?( ID, IF ) || look_10_0 == INPUT || look_10_0 == PRINT || look_10_0 == RETURN || look_10_0 == WHILE )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 164:155: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_method_770 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_775 )

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
    # 167:1: constructor : ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __ID6__ = nil


      begin
      # at line 168:6: ID parameters START ( attributes )* ( estatutes )* R_END
      __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_constructor_789 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_791 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_constructor_794 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 168:53: ( attributes )*
      while true # decision 11
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0.between?( BOOL, CHAR ) || look_11_0 == FLOAT || look_11_0 == INTEGER )
          alt_11 = 1

        end
        case alt_11
        when 1
          # at line 168:54: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_constructor_799 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 11
        end
      end # loop for decision 11

      # at line 168:67: ( estatutes )*
      while true # decision 12
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == FOR || look_12_0.between?( ID, IF ) || look_12_0 == INPUT || look_12_0 == PRINT || look_12_0 == WHILE )
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 168:68: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_constructor_804 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 12
        end
      end # loop for decision 12


      # --> action
      $program.add_func(__ID6__.text, "CONST", $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_811 )

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
    # 171:1: program : PROGRAM ID START ( attributes )* ( estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID7__ = nil


      begin
      # at line 172:5: PROGRAM ID START ( attributes )* ( estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_824 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_program_826 )
      match( START, TOKENS_FOLLOWING_START_IN_program_828 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 172:48: ( attributes )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0.between?( BOOL, CHAR ) || look_13_0 == FLOAT || look_13_0 == INTEGER )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 172:49: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_program_833 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13


      # --> action
      $program.add_func(__ID7__.text, "void", 0, $numTemp)
      # <-- action

      # at line 172:115: ( estatutes )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == FOR || look_14_0.between?( ID, IF ) || look_14_0 == INPUT || look_14_0 == PRINT || look_14_0 == WHILE )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 172:116: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_840 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_844 )

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
    # 175:1: variables : ( dec_var | dec_arr | dec_mat ) ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 176:5: ( dec_var | dec_arr | dec_mat )
      # at line 176:5: ( dec_var | dec_arr | dec_mat )
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
        # at line 176:6: dec_var
        @state.following.push( TOKENS_FOLLOWING_dec_var_IN_variables_858 )
        dec_var
        @state.following.pop

      when 2
        # at line 176:16: dec_arr
        @state.following.push( TOKENS_FOLLOWING_dec_arr_IN_variables_862 )
        dec_arr
        @state.following.pop

      when 3
        # at line 176:26: dec_mat
        @state.following.push( TOKENS_FOLLOWING_dec_mat_IN_variables_866 )
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
    # 179:1: dec_var : type_c ID ( dec_var_2 )* SEMICOLON ;
    #
    def dec_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID9__ = nil
      type_c8 = nil


      begin
      # at line 180:5: type_c ID ( dec_var_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_dec_var_880 )
      type_c8 = type_c
      @state.following.pop

      # --> action
      $varType = ( type_c8 && @input.to_s( type_c8.start, type_c8.stop ) )
      # <-- action

      __ID9__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_884 )

      # --> action
      $program.add_var(__ID9__.text, $varType, $scope)
      # <-- action

      # at line 180:92: ( dec_var_2 )*
      while true # decision 16
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == COMMA )
          alt_16 = 1

        end
        case alt_16
        when 1
          # at line 180:92: dec_var_2
          @state.following.push( TOKENS_FOLLOWING_dec_var_2_IN_dec_var_888 )
          dec_var_2
          @state.following.pop

        else
          break # out of loop for decision 16
        end
      end # loop for decision 16

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_891 )

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
    # 183:1: dec_var_2 : COMMA ID ;
    #
    def dec_var_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      __ID10__ = nil


      begin
      # at line 184:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dec_var_2_904 )
      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_2_906 )

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
    # 187:1: dec_arr : type_s ID LB C_INT RB SEMICOLON ;
    #
    def dec_arr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      __ID11__ = nil
      __C_INT13__ = nil
      type_s12 = nil


      begin
      # at line 188:5: type_s ID LB C_INT RB SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_arr_921 )
      type_s12 = type_s
      @state.following.pop
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_arr_923 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_arr_925 )
      __C_INT13__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_arr_927 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_arr_929 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_931 )

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
    # 191:1: dec_mat : type_s ID LB C_INT RB dim_2 SEMICOLON ;
    #
    def dec_mat
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID14__ = nil
      __C_INT16__ = nil
      type_s15 = nil


      begin
      # at line 192:5: type_s ID LB C_INT RB dim_2 SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_mat_946 )
      type_s15 = type_s
      @state.following.pop
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_mat_948 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_mat_950 )
      __C_INT16__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_mat_952 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_mat_954 )
      @state.following.push( TOKENS_FOLLOWING_dim_2_IN_dec_mat_957 )
      dim_2
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_959 )

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
    # 195:1: dim_2 : LB C_INT RB ;
    #
    def dim_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __C_INT17__ = nil


      begin
      # at line 196:5: LB C_INT RB
      match( LB, TOKENS_FOLLOWING_LB_IN_dim_2_974 )
      __C_INT17__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dim_2_976 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dim_2_978 )

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
    # 199:1: attributes : type_s ID ( attributes_2 )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID19__ = nil
      type_s18 = nil


      begin
      # at line 200:5: type_s ID ( attributes_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_993 )
      type_s18 = type_s
      @state.following.pop

      # --> action
      $varType = ( type_s18 && @input.to_s( type_s18.start, type_s18.stop ) )
      # <-- action

      __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_997 )

      # --> action
      $program.add_var(__ID19__.text, $varType, $scope)
      # <-- action

      # at line 200:92: ( attributes_2 )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == COMMA )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 200:92: attributes_2
          @state.following.push( TOKENS_FOLLOWING_attributes_2_IN_attributes_1001 )
          attributes_2
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_1005 )

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
    # 203:1: attributes_2 : COMMA ID ;
    #
    def attributes_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID20__ = nil


      begin
      # at line 204:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_2_1018 )
      __ID20__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_2_1020 )

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
    # 207:1: parameters : LP ( type_s ID ( parameters_2 )* )? RP ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      __ID21__ = nil
      type_s22 = nil


      begin
      # at line 208:5: LP ( type_s ID ( parameters_2 )* )? RP
      match( LP, TOKENS_FOLLOWING_LP_IN_parameters_1035 )
      # at line 208:8: ( type_s ID ( parameters_2 )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0.between?( BOOL, CHAR ) || look_19_0 == FLOAT || look_19_0 == INTEGER )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 208:9: type_s ID ( parameters_2 )*
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_1038 )
        type_s22 = type_s
        @state.following.pop
        __ID21__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1040 )

        # --> action
        $program.add_var(__ID21__.text, ( type_s22 && @input.to_s( type_s22.start, type_s22.stop ) ), $scope)
        # <-- action


        # --> action
        $params += 1
        # <-- action

        # at line 208:86: ( parameters_2 )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 208:88: parameters_2
            @state.following.push( TOKENS_FOLLOWING_parameters_2_IN_parameters_1046 )
            parameters_2
            @state.following.pop

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_parameters_1053 )

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
    # 211:1: parameters_2 : COMMA type_s ID ;
    #
    def parameters_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __ID23__ = nil
      type_s24 = nil


      begin
      # at line 212:6: COMMA type_s ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_2_1067 )
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_2_1069 )
      type_s24 = type_s
      @state.following.pop
      __ID23__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_2_1071 )

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
    # 215:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
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
    # 219:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      return_value = TypeCReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 220:5: ( type_s | ID )
      # at line 220:5: ( type_s | ID )
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
        # at line 220:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_1115 )
        type_s
        @state.following.pop

      when 2
        # at line 220:15: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_1119 )

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
    # 223:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      return_value = TypeFReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 224:5: ( type_s | VOID )
      # at line 224:5: ( type_s | VOID )
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
        # at line 224:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_1134 )
        type_s
        @state.following.pop

      when 2
        # at line 224:15: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_1138 )

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
    # 227:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 228:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_1152 )
      # at line 228:11: ( estatutes )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == FOR || look_22_0.between?( ID, IF ) || look_22_0 == INPUT || look_22_0 == PRINT || look_22_0 == WHILE )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 228:11: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_1154 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1157 )

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
    # 231:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      __AND25__ = nil
      __OR26__ = nil


      begin
      # at line 232:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1170 )
      expression
      @state.following.pop
      # at line 232:16: ( ( AND | OR ) expression )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == AND || look_24_0 == OR )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 232:17: ( AND | OR ) expression
          # at line 232:17: ( AND | OR )
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0 == AND )
            alt_23 = 1
          elsif ( look_23_0 == OR )
            alt_23 = 2
          else
            raise NoViableAlternative( "", 23, 0 )

          end
          case alt_23
          when 1
            # at line 232:18: AND
            __AND25__ = match( AND, TOKENS_FOLLOWING_AND_IN_super_expression_1174 )

            # --> action
            $cuads.add_SE(__AND25__.text)
            # <-- action


          when 2
            # at line 232:51: OR
            __OR26__ = match( OR, TOKENS_FOLLOWING_OR_IN_super_expression_1179 )

            # --> action
            $cuads.add_SE(__OR26__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1184 )
          expression
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
        # trace_out( __method__, 22 )


      end

      return 
    end



    #
    # parser rule expression
    #
    # (in Foma.g)
    # 235:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
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
      # at line 236:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1199 )
      exp
      @state.following.pop
      # at line 236:9: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == EQ || look_26_0.between?( GEQ, GT ) || look_26_0 == LEQ || look_26_0 == LT || look_26_0 == NE )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 236:10: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          # at line 236:10: ( LT | LEQ | GT | GEQ | EQ | NE )
          alt_25 = 6
          case look_25 = @input.peek( 1 )
          when LT then alt_25 = 1
          when LEQ then alt_25 = 2
          when GT then alt_25 = 3
          when GEQ then alt_25 = 4
          when EQ then alt_25 = 5
          when NE then alt_25 = 6
          else
            raise NoViableAlternative( "", 25, 0 )

          end
          case alt_25
          when 1
            # at line 236:11: LT
            __LT27__ = match( LT, TOKENS_FOLLOWING_LT_IN_expression_1203 )

            # --> action
            $cuads.add_E(__LT27__.text)
            # <-- action


          when 2
            # at line 236:42: LEQ
            __LEQ28__ = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expression_1209 )

            # --> action
            $cuads.add_E(__LEQ28__.text)
            # <-- action


          when 3
            # at line 236:75: GT
            __GT29__ = match( GT, TOKENS_FOLLOWING_GT_IN_expression_1215 )

            # --> action
            $cuads.add_E(__GT29__.text)
            # <-- action


          when 4
            # at line 236:106: GEQ
            __GEQ30__ = match( GEQ, TOKENS_FOLLOWING_GEQ_IN_expression_1221 )

            # --> action
            $cuads.add_E(__GEQ30__.text)
            # <-- action


          when 5
            # at line 236:139: EQ
            __EQ31__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_1227 )

            # --> action
            $cuads.add_E(__EQ31__.text)
            # <-- action


          when 6
            # at line 236:170: NE
            __NE32__ = match( NE, TOKENS_FOLLOWING_NE_IN_expression_1233 )

            # --> action
            $cuads.add_E(__NE32__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1239 )
          exp
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
        # trace_out( __method__, 23 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Foma.g)
    # 239:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __ADD33__ = nil
      __SUB34__ = nil


      begin
      # at line 240:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1254 )
      term
      @state.following.pop
      # at line 240:10: ( ( ADD | SUB ) term )*
      while true # decision 28
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == ADD || look_28_0 == SUB )
          alt_28 = 1

        end
        case alt_28
        when 1
          # at line 240:11: ( ADD | SUB ) term
          # at line 240:11: ( ADD | SUB )
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == ADD )
            alt_27 = 1
          elsif ( look_27_0 == SUB )
            alt_27 = 2
          else
            raise NoViableAlternative( "", 27, 0 )

          end
          case alt_27
          when 1
            # at line 240:12: ADD
            __ADD33__ = match( ADD, TOKENS_FOLLOWING_ADD_IN_exp_1258 )

            # --> action
            $cuads.add_EXP(__ADD33__.text)
            # <-- action


          when 2
            # at line 240:47: SUB
            __SUB34__ = match( SUB, TOKENS_FOLLOWING_SUB_IN_exp_1264 )

            # --> action
            $cuads.add_EXP(__SUB34__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1269 )
          term
          @state.following.pop

        else
          break # out of loop for decision 28
        end
      end # loop for decision 28


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
    # 243:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT35__ = nil
      __DIV36__ = nil
      __MOD37__ = nil


      begin
      # at line 244:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1284 )
      factor
      @state.following.pop
      # at line 244:12: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 30
        alt_30 = 2
        look_30_0 = @input.peek( 1 )

        if ( look_30_0 == DIV || look_30_0.between?( MOD, MULT ) )
          alt_30 = 1

        end
        case alt_30
        when 1
          # at line 244:14: ( MULT | DIV | MOD ) factor
          # at line 244:14: ( MULT | DIV | MOD )
          alt_29 = 3
          case look_29 = @input.peek( 1 )
          when MULT then alt_29 = 1
          when DIV then alt_29 = 2
          when MOD then alt_29 = 3
          else
            raise NoViableAlternative( "", 29, 0 )

          end
          case alt_29
          when 1
            # at line 244:16: MULT
            __MULT35__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1290 )

            # --> action
            $cuads.add_T(__MULT35__.text)
            # <-- action


          when 2
            # at line 244:51: DIV
            __DIV36__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1296 )

            # --> action
            $cuads.add_T(__DIV36__.text)
            # <-- action


          when 3
            # at line 244:83: MOD
            __MOD37__ = match( MOD, TOKENS_FOLLOWING_MOD_IN_term_1301 )

            # --> action
            $cuads.add_T(__MOD37__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1307 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 30
        end
      end # loop for decision 30


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
    # 247:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      var_cte38 = nil


      begin
      # at line 248:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 248:5: ( LP super_expression RP | var_cte | func_call | method_call )
      alt_31 = 4
      case look_31 = @input.peek( 1 )
      when LP then alt_31 = 1
      when ID then case look_31 = @input.peek( 2 )
      when LP then alt_31 = 3
      when POINT then alt_31 = 4
      when ADD, AND, COMMA, DIV, EQ, GEQ, GT, LB, LEQ, LT, MOD, MULT, NE, OR, RB, RP, SEMICOLON, SUB then alt_31 = 2
      else
        raise NoViableAlternative( "", 31, 2 )

      end
      when C_BOOL, C_CHAR, C_FLOAT, C_INT then alt_31 = 2
      else
        raise NoViableAlternative( "", 31, 0 )

      end
      case alt_31
      when 1
        # at line 248:6: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1324 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1326 )
        super_expression
        @state.following.pop
        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1328 )

      when 2
        # at line 248:31: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1332 )
        var_cte38 = var_cte
        @state.following.pop

        # --> action
        $cuads.add_operando(( var_cte38 && @input.to_s( var_cte38.start, var_cte38.stop ) ))
        # <-- action


      when 3
        # at line 248:80: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1339 )
        func_call
        @state.following.pop

      when 4
        # at line 248:92: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_1343 )
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

    VarCteReturnValue = define_return_scope

    #
    # parser rule var_cte
    #
    # (in Foma.g)
    # 251:1: var_cte : ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      return_value = VarCteReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 252:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 252:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      alt_32 = 5
      case look_32 = @input.peek( 1 )
      when ID then alt_32 = 1
      when C_INT then alt_32 = 2
      when C_FLOAT then alt_32 = 3
      when C_CHAR then alt_32 = 4
      when C_BOOL then alt_32 = 5
      else
        raise NoViableAlternative( "", 32, 0 )

      end
      case alt_32
      when 1
        # at line 252:6: var_access
        @state.following.push( TOKENS_FOLLOWING_var_access_IN_var_cte_1358 )
        var_access
        @state.following.pop

      when 2
        # at line 252:19: C_INT
        match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_1362 )

      when 3
        # at line 252:27: C_FLOAT
        match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1366 )

      when 4
        # at line 252:37: C_CHAR
        match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1370 )

      when 5
        # at line 252:46: C_BOOL
        match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1374 )

      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )


      end

      return return_value
    end

    VarAccessReturnValue = define_return_scope

    #
    # parser rule var_access
    #
    # (in Foma.g)
    # 255:1: var_access : ID ( LB exp RB ( LB exp RB )? )? ;
    #
    def var_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      return_value = VarAccessReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 256:5: ID ( LB exp RB ( LB exp RB )? )?
      match( ID, TOKENS_FOLLOWING_ID_IN_var_access_1388 )
      # at line 256:8: ( LB exp RB ( LB exp RB )? )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == LB )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 256:9: LB exp RB ( LB exp RB )?
        match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1391 )

        # --> action
        $cuads.add_falseBottom
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1396 )
        exp
        @state.following.pop

        # --> action
        $cuads.rem_falseBottom
        # <-- action


        # --> action
        $cuads.drop_opp
        # <-- action

        match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1401 )
        # at line 256:90: ( LB exp RB )?
        alt_33 = 2
        look_33_0 = @input.peek( 1 )

        if ( look_33_0 == LB )
          alt_33 = 1
        end
        case alt_33
        when 1
          # at line 256:91: LB exp RB
          match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1404 )

          # --> action
          $cuads.add_falseBottom
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1409 )
          exp
          @state.following.pop

          # --> action
          $cuads.rem_falseBottom
          # <-- action


          # --> action
          $cuads.drop_opp
          # <-- action

          match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1415 )

        end

      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return return_value
    end



    #
    # parser rule estatutes
    #
    # (in Foma.g)
    # 259:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 260:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      # at line 260:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      alt_35 = 8
      case look_35 = @input.peek( 1 )
      when ID then case look_35 = @input.peek( 2 )
      when LP then alt_35 = 7
      when POINT then alt_35 = 8
      when ASSIGN, LB then alt_35 = 1
      else
        raise NoViableAlternative( "", 35, 1 )

      end
      when IF then alt_35 = 2
      when WHILE then alt_35 = 3
      when FOR then alt_35 = 4
      when PRINT then alt_35 = 5
      when INPUT then alt_35 = 6
      else
        raise NoViableAlternative( "", 35, 0 )

      end
      case alt_35
      when 1
        # at line 260:6: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_1433 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1435 )

      when 2
        # at line 260:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_1439 )
        condition
        @state.following.pop

      when 3
        # at line 260:37: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_1443 )
        while_loop
        @state.following.pop

      when 4
        # at line 260:50: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_1447 )
        for_loop
        @state.following.pop

      when 5
        # at line 260:61: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_1451 )
        print
        @state.following.pop

      when 6
        # at line 260:69: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_1455 )
        input
        @state.following.pop

      when 7
        # at line 260:77: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_1459 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1461 )

      when 8
        # at line 260:99: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_1465 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1467 )

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
    # 263:1: estatutes_f : ( estatutes | r_return ) ;
    #
    def estatutes_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      begin
      # at line 264:5: ( estatutes | r_return )
      # at line 264:5: ( estatutes | r_return )
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == FOR || look_36_0.between?( ID, IF ) || look_36_0 == INPUT || look_36_0 == PRINT || look_36_0 == WHILE )
        alt_36 = 1
      elsif ( look_36_0 == RETURN )
        alt_36 = 2
      else
        raise NoViableAlternative( "", 36, 0 )

      end
      case alt_36
      when 1
        # at line 264:6: estatutes
        @state.following.push( TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1483 )
        estatutes
        @state.following.pop

      when 2
        # at line 264:18: r_return
        @state.following.push( TOKENS_FOLLOWING_r_return_IN_estatutes_f_1487 )
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
    # 267:1: assign : var_access ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      var_access39 = nil


      begin
      # at line 268:5: var_access ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_var_access_IN_assign_1501 )
      var_access39 = var_access
      @state.following.pop

      # --> action
      $cuads.add_operando(( var_access39 && @input.to_s( var_access39.start, var_access39.stop ) ))
      # <-- action

      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_1505 )

      # --> action
      $cuads.add_assign()
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_1509 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.emptyStack
      # <-- action


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
    # 271:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )


      begin
      # at line 272:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1524 )
      match( LP, TOKENS_FOLLOWING_LP_IN_condition_1526 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1530 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_condition_1535 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1537 )
      block
      @state.following.pop
      # at line 272:109: ( ELSE block )?
      alt_37 = 2
      look_37_0 = @input.peek( 1 )

      if ( look_37_0 == ELSE )
        alt_37 = 1
      end
      case alt_37
      when 1
        # at line 272:110: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1540 )

        # --> action
        $cuads.goto_else
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1545 )
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
        # trace_out( __method__, 32 )


      end

      return 
    end



    #
    # parser rule while_loop
    #
    # (in Foma.g)
    # 275:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )


      begin
      # at line 276:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1562 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_1564 )

      # --> action
      $cuads.save_spot
      # <-- action


      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1569 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_1574 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1576 )
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
        # trace_out( __method__, 33 )


      end

      return 
    end



    #
    # parser rule for_loop
    #
    # (in Foma.g)
    # 279:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )


      begin
      # at line 280:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1591 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_1593 )
      # at line 280:12: ( assign )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ID )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 280:12: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1595 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1598 )

      # --> action
      $cuads.save_spot
      # <-- action


      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_1603 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1609 )

      # --> action
      $cuads.add_swap
      # <-- action

      # at line 280:167: ( assign )?
      alt_39 = 2
      look_39_0 = @input.peek( 1 )

      if ( look_39_0 == ID )
        alt_39 = 1
      end
      case alt_39
      when 1
        # at line 280:167: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1612 )
        assign
        @state.following.pop

      end

      # --> action
      $cuads.add_swap
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_1617 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1619 )
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
        # trace_out( __method__, 34 )


      end

      return 
    end



    #
    # parser rule print
    #
    # (in Foma.g)
    # 283:1: print : PRINT LP ( super_expression ( print_2 )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )


      begin
      # at line 284:5: PRINT LP ( super_expression ( print_2 )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_1635 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_1637 )
      # at line 284:14: ( super_expression ( print_2 )* )
      # at line 284:15: super_expression ( print_2 )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1640 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.emptyStack
      # <-- action


      # --> action
      $cuads.do_print
      # <-- action

      # at line 284:70: ( print_2 )*
      while true # decision 40
        alt_40 = 2
        look_40_0 = @input.peek( 1 )

        if ( look_40_0 == COMMA )
          alt_40 = 1

        end
        case alt_40
        when 1
          # at line 284:70: print_2
          @state.following.push( TOKENS_FOLLOWING_print_2_IN_print_1644 )
          print_2
          @state.following.pop

        else
          break # out of loop for decision 40
        end
      end # loop for decision 40


      match( RP, TOKENS_FOLLOWING_RP_IN_print_1649 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_1651 )

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
    # parser rule print_2
    #
    # (in Foma.g)
    # 287:1: print_2 : COMMA super_expression ;
    #
    def print_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )


      begin
      # at line 288:6: COMMA super_expression
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_2_1665 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_2_1667 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.emptyStack
      # <-- action


      # --> action
      $cuads.do_print
      # <-- action


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
    # parser rule input
    #
    # (in Foma.g)
    # 291:1: input : INPUT LP ID RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )


      __ID40__ = nil


      begin
      # at line 292:5: INPUT LP ID RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_1683 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_1685 )
      __ID40__ = match( ID, TOKENS_FOLLOWING_ID_IN_input_1687 )

      # --> action
      $cuads.add_operando(__ID40__.text)
      # <-- action


      # --> action
      $cuads.do_input
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_input_1693 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_1695 )

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
    # parser rule func_call
    #
    # (in Foma.g)
    # 295:1: func_call : ID LP ( ID ( COMMA ID )* )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )


      begin
      # at line 296:5: ID LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1708 )
      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_1710 )
      # at line 296:11: ( ID ( COMMA ID )* )?
      alt_42 = 2
      look_42_0 = @input.peek( 1 )

      if ( look_42_0 == ID )
        alt_42 = 1
      end
      case alt_42
      when 1
        # at line 296:12: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1713 )
        # at line 296:15: ( COMMA ID )*
        while true # decision 41
          alt_41 = 2
          look_41_0 = @input.peek( 1 )

          if ( look_41_0 == COMMA )
            alt_41 = 1

          end
          case alt_41
          when 1
            # at line 296:16: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_1716 )
            match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1718 )

          else
            break # out of loop for decision 41
          end
        end # loop for decision 41


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_1724 )

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
    # parser rule method_call
    #
    # (in Foma.g)
    # 299:1: method_call : ID POINT LP ( ID ( COMMA ID )* )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )


      begin
      # at line 300:5: ID POINT LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1737 )
      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_1739 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_1741 )
      # at line 300:17: ( ID ( COMMA ID )* )?
      alt_44 = 2
      look_44_0 = @input.peek( 1 )

      if ( look_44_0 == ID )
        alt_44 = 1
      end
      case alt_44
      when 1
        # at line 300:18: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1744 )
        # at line 300:21: ( COMMA ID )*
        while true # decision 43
          alt_43 = 2
          look_43_0 = @input.peek( 1 )

          if ( look_43_0 == COMMA )
            alt_43 = 1

          end
          case alt_43
          when 1
            # at line 300:22: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_1747 )
            match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1749 )

          else
            break # out of loop for decision 43
          end
        end # loop for decision 43


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_1755 )

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
    # parser rule r_return
    #
    # (in Foma.g)
    # 303:1: r_return : RETURN super_expression SEMICOLON ;
    #
    def r_return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )


      begin
      # at line 304:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_r_return_1767 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_r_return_1769 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1771 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 40 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_585 = Set[ 7, 8, 9, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_variables_IN_commence_596 = Set[ 7, 8, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_function_IN_commence_607 = Set[ 21, 43 ]
    TOKENS_FOLLOWING_program_IN_commence_615 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_639 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_641 = Set[ 26, 50 ]
    TOKENS_FOLLOWING_inherits_IN_r_class_646 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_r_class_649 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_654 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_662 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_method_IN_r_class_667 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_675 = Set[ 1 ]
    TOKENS_FOLLOWING_INHER_IN_inherits_689 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_inherits_691 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_706 = Set[ 7, 8, 19, 28, 52 ]
    TOKENS_FOLLOWING_type_f_IN_function_710 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_712 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_function_717 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_function_719 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_function_725 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_function_732 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_function_736 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_749 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_751 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_method_753 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_method_755 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_method_760 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_method_770 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_method_775 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_789 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_791 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_constructor_794 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_constructor_799 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_constructor_804 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_811 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_824 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_826 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_program_828 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_program_833 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_program_840 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_program_844 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_var_IN_variables_858 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_arr_IN_variables_862 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_mat_IN_variables_866 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_dec_var_880 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_884 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_dec_var_2_IN_dec_var_888 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_891 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_dec_var_2_904 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_2_906 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_arr_921 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_arr_923 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_arr_925 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_arr_927 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_arr_929 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_931 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_mat_946 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_mat_948 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_mat_950 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_mat_952 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_mat_954 = Set[ 29 ]
    TOKENS_FOLLOWING_dim_2_IN_dec_mat_957 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_959 = Set[ 1 ]
    TOKENS_FOLLOWING_LB_IN_dim_2_974 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dim_2_976 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dim_2_978 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_993 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_997 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_attributes_2_IN_attributes_1001 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_1005 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_2_1018 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_2_1020 = Set[ 1 ]
    TOKENS_FOLLOWING_LP_IN_parameters_1035 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_1038 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1040 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_parameters_2_IN_parameters_1046 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_parameters_1053 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_2_1067 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_2_1069 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_2_1071 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_1115 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_1119 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_1134 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_1138 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_1152 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_block_1154 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_block_1157 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1170 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_AND_IN_super_expression_1174 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_OR_IN_super_expression_1179 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1184 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_exp_IN_expression_1199 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_LT_IN_expression_1203 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_LEQ_IN_expression_1209 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_GT_IN_expression_1215 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_GEQ_IN_expression_1221 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_EQ_IN_expression_1227 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_NE_IN_expression_1233 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_expression_1239 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1254 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_ADD_IN_exp_1258 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_SUB_IN_exp_1264 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_term_IN_exp_1269 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_factor_IN_term_1284 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_MULT_IN_term_1290 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_DIV_IN_term_1296 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_MOD_IN_term_1301 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_1307 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1324 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1326 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_factor_1328 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1332 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1339 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_1343 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_var_cte_1358 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_1362 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1366 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1370 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1374 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_var_access_1388 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1391 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1396 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1401 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1404 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1409 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1415 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_1433 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1435 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_1439 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_1443 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_1447 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_1451 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_1455 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_1459 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1461 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_1465 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1467 = Set[ 1 ]
    TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1483 = Set[ 1 ]
    TOKENS_FOLLOWING_r_return_IN_estatutes_f_1487 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_assign_1501 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_1505 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_1509 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1524 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_1526 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1530 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_condition_1535 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1537 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1540 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1545 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1562 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_1564 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1569 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_1574 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1576 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1591 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_1593 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1595 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1598 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_1603 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1609 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1612 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_1617 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1619 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_1635 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_1637 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1640 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_print_2_IN_print_1644 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_print_1649 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_1651 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_print_2_1665 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_2_1667 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_1683 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_1685 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_input_1687 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_input_1693 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_1695 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1708 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_1710 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1713 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_1716 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1718 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_func_call_1724 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1737 = Set[ 41 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_1739 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_1741 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1744 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_1747 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1749 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_call_1755 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_r_return_1767 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_r_return_1769 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1771 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
