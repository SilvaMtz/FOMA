#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-20 19:26:41
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
                     :print_2, :input, :func_call, :call_params, :call_params2, 
                     :method_call, :method_call_2, :r_return ].freeze

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
      $varId
      $varType
      $dimTemp
      $numTemp

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 145:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 146:6: ( r_class )* ( variables )* ( function )* program
      # --> action
      $cuads.goto_main
      # <-- action

      # at line 146:25: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 146:26: r_class
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

      # at line 147:26: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 147:27: variables
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

      # at line 148:5: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 148:6: function
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
    # 155:1: r_class : CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 156:5: CLASS ID ( inherits )? START ( attributes )* constructor ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_648 )

      # --> action
      $scope = "class"
      # <-- action

      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_652 )

      # --> action
      $classId = __ID1__.text
      # <-- action

      # at line 156:58: ( inherits )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 156:58: inherits
        @state.following.push( TOKENS_FOLLOWING_inherits_IN_r_class_657 )
        inherits
        @state.following.pop

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_660 )
      # at line 156:75: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 156:77: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_665 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5


      # --> action
      $program.add_attrs()
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_673 )
      constructor
      @state.following.pop
      # at line 156:129: ( method )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( BOOL, CHAR ) || look_6_0 == FLOAT || look_6_0 == INTEGER || look_6_0 == VOID )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 156:131: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_678 )
          method
          @state.following.pop

        else
          break # out of loop for decision 6
        end
      end # loop for decision 6


      # --> action
      $program.add_class($classId)
      # <-- action

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_686 )

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
    # 159:1: inherits : ( INHER ID ) ;
    #
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 160:4: ( INHER ID )
      # at line 160:4: ( INHER ID )
      # at line 160:6: INHER ID
      match( INHER, TOKENS_FOLLOWING_INHER_IN_inherits_700 )
      match( ID, TOKENS_FOLLOWING_ID_IN_inherits_702 )


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
    # 163:1: function : FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID2__ = nil
      type_f3 = nil


      begin
      # at line 164:5: FUNCTION type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_717 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_719 )
      type_f3 = type_f
      @state.following.pop
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_721 )

      # --> action
      $scope = __ID2__.text
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_726 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_function_728 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 164:90: ( attributes )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 164:91: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_function_734 )
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

      # at line 164:183: ( estatutes_f )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == FOR || look_8_0.between?( ID, IF ) || look_8_0 == INPUT || look_8_0 == PRINT || look_8_0 == RETURN || look_8_0 == WHILE )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 164:184: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_function_741 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_745 )

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
    # 167:1: method : type_f ID parameters START ( attributes )* ( estatutes_f )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID4__ = nil
      type_f5 = nil


      begin
      # at line 168:5: type_f ID parameters START ( attributes )* ( estatutes_f )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_760 )
      type_f5 = type_f
      @state.following.pop
      __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_762 )

      # --> action
      $scope = "#{$classId}.#{__ID4__.text}"
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_766 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_method_768 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 168:97: ( attributes )*
      while true # decision 9
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( BOOL, CHAR ) || look_9_0 == FLOAT || look_9_0 == INTEGER )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 168:98: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_method_773 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9


      # --> action
      $program.add_func("#{$classId}.#{__ID4__.text}", ( type_f5 && @input.to_s( type_f5.start, type_f5.stop ) ), $params, $numTemp)
      # <-- action


      # --> action
      $params = 0
      # <-- action

      # at line 168:211: ( estatutes_f )*
      while true # decision 10
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == FOR || look_10_0.between?( ID, IF ) || look_10_0 == INPUT || look_10_0 == PRINT || look_10_0 == RETURN || look_10_0 == WHILE )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 168:212: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_method_783 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_788 )

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
    # 171:1: constructor : ID parameters START ( attributes )* ( estatutes )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __ID6__ = nil


      begin
      # at line 172:6: ID parameters START ( attributes )* ( estatutes )* R_END
      __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_constructor_804 )

      # --> action
      $scope = __ID6__.text
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_808 )
      parameters
      @state.following.pop
      match( START, TOKENS_FOLLOWING_START_IN_constructor_811 )

      # --> action
      $numTemp = $cuads.num
      # <-- action

      # at line 172:74: ( attributes )*
      while true # decision 11
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0.between?( BOOL, CHAR ) || look_11_0 == FLOAT || look_11_0 == INTEGER )
          alt_11 = 1

        end
        case alt_11
        when 1
          # at line 172:75: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_constructor_816 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 11
        end
      end # loop for decision 11

      # at line 172:88: ( estatutes )*
      while true # decision 12
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == FOR || look_12_0.between?( ID, IF ) || look_12_0 == INPUT || look_12_0 == PRINT || look_12_0 == WHILE )
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 172:89: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_constructor_821 )
          estatutes
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

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_828 )

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
    # 175:1: program : PROGRAM ID START ( attributes )* ( estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID7__ = nil


      begin
      # at line 176:5: PROGRAM ID START ( attributes )* ( estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_843 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_program_845 )

      # --> action
      $scope = __ID7__.text
      # <-- action

      match( START, TOKENS_FOLLOWING_START_IN_program_849 )

      # --> action
      $numTemp = $cuads.num
      # <-- action


      # --> action
      $cuads.fill_main
      # <-- action

      # at line 176:88: ( attributes )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0.between?( BOOL, CHAR ) || look_13_0 == FLOAT || look_13_0 == INTEGER )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 176:89: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_program_855 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13


      # --> action
      $program.add_func(__ID7__.text, "void", 0, $numTemp)
      # <-- action

      # at line 176:155: ( estatutes )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == FOR || look_14_0.between?( ID, IF ) || look_14_0 == INPUT || look_14_0 == PRINT || look_14_0 == WHILE )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 176:156: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_862 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_866 )

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
    # 179:1: variables : ( dec_var | dec_arr | dec_mat ) ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 180:5: ( dec_var | dec_arr | dec_mat )
      # at line 180:5: ( dec_var | dec_arr | dec_mat )
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
        # at line 180:6: dec_var
        @state.following.push( TOKENS_FOLLOWING_dec_var_IN_variables_880 )
        dec_var
        @state.following.pop

      when 2
        # at line 180:16: dec_arr
        @state.following.push( TOKENS_FOLLOWING_dec_arr_IN_variables_884 )
        dec_arr
        @state.following.pop

      when 3
        # at line 180:26: dec_mat
        @state.following.push( TOKENS_FOLLOWING_dec_mat_IN_variables_888 )
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
    # 183:1: dec_var : type_c ID ( dec_var_2 )* SEMICOLON ;
    #
    def dec_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID9__ = nil
      type_c8 = nil


      begin
      # at line 184:5: type_c ID ( dec_var_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_dec_var_902 )
      type_c8 = type_c
      @state.following.pop

      # --> action
      $varType = ( type_c8 && @input.to_s( type_c8.start, type_c8.stop ) )
      # <-- action

      __ID9__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_906 )

      # --> action
      $program.add_var(__ID9__.text, $varType, $scope)
      # <-- action

      # at line 184:92: ( dec_var_2 )*
      while true # decision 16
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == COMMA )
          alt_16 = 1

        end
        case alt_16
        when 1
          # at line 184:92: dec_var_2
          @state.following.push( TOKENS_FOLLOWING_dec_var_2_IN_dec_var_910 )
          dec_var_2
          @state.following.pop

        else
          break # out of loop for decision 16
        end
      end # loop for decision 16

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_913 )

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
    # 187:1: dec_var_2 : COMMA ID ;
    #
    def dec_var_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      __ID10__ = nil


      begin
      # at line 188:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dec_var_2_926 )
      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_var_2_928 )

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
    # 191:1: dec_arr : type_s ID LB C_INT RB SEMICOLON ;
    #
    def dec_arr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      __ID11__ = nil
      __C_INT13__ = nil
      type_s12 = nil


      begin
      # at line 192:5: type_s ID LB C_INT RB SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_arr_943 )
      type_s12 = type_s
      @state.following.pop
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_arr_945 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_arr_947 )
      __C_INT13__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_arr_949 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_arr_951 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_953 )

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
    # 195:1: dec_mat : type_s ID LB C_INT RB dim_2 SEMICOLON ;
    #
    def dec_mat
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID14__ = nil
      __C_INT16__ = nil
      type_s15 = nil


      begin
      # at line 196:5: type_s ID LB C_INT RB dim_2 SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_dec_mat_968 )
      type_s15 = type_s
      @state.following.pop
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_dec_mat_970 )
      match( LB, TOKENS_FOLLOWING_LB_IN_dec_mat_972 )
      __C_INT16__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dec_mat_974 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dec_mat_976 )
      @state.following.push( TOKENS_FOLLOWING_dim_2_IN_dec_mat_979 )
      dim_2
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_981 )

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
    # 199:1: dim_2 : LB C_INT RB ;
    #
    def dim_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __C_INT17__ = nil


      begin
      # at line 200:5: LB C_INT RB
      match( LB, TOKENS_FOLLOWING_LB_IN_dim_2_996 )
      __C_INT17__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_dim_2_998 )
      match( RB, TOKENS_FOLLOWING_RB_IN_dim_2_1000 )

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
    # 203:1: attributes : type_s ID ( attributes_2 )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID19__ = nil
      type_s18 = nil


      begin
      # at line 204:5: type_s ID ( attributes_2 )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_1015 )
      type_s18 = type_s
      @state.following.pop

      # --> action
      $varType = ( type_s18 && @input.to_s( type_s18.start, type_s18.stop ) )
      # <-- action

      __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_1019 )

      # --> action
      $program.add_var(__ID19__.text, $varType, $scope)
      # <-- action

      # at line 204:92: ( attributes_2 )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == COMMA )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 204:92: attributes_2
          @state.following.push( TOKENS_FOLLOWING_attributes_2_IN_attributes_1023 )
          attributes_2
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_1027 )

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
    # 207:1: attributes_2 : COMMA ID ;
    #
    def attributes_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID20__ = nil


      begin
      # at line 208:5: COMMA ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_2_1040 )
      __ID20__ = match( ID, TOKENS_FOLLOWING_ID_IN_attributes_2_1042 )

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
    # 211:1: parameters : LP ( type_s ID ( parameters_2 )* )? RP ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      __ID21__ = nil
      type_s22 = nil


      begin
      # at line 212:5: LP ( type_s ID ( parameters_2 )* )? RP
      match( LP, TOKENS_FOLLOWING_LP_IN_parameters_1057 )
      # at line 212:8: ( type_s ID ( parameters_2 )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0.between?( BOOL, CHAR ) || look_19_0 == FLOAT || look_19_0 == INTEGER )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 212:9: type_s ID ( parameters_2 )*
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_1060 )
        type_s22 = type_s
        @state.following.pop
        __ID21__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1062 )

        # --> action
        $program.add_var(__ID21__.text, ( type_s22 && @input.to_s( type_s22.start, type_s22.stop ) ), $scope)
        # <-- action


        # --> action
        $params += 1
        # <-- action

        # at line 212:86: ( parameters_2 )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 212:88: parameters_2
            @state.following.push( TOKENS_FOLLOWING_parameters_2_IN_parameters_1068 )
            parameters_2
            @state.following.pop

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_parameters_1075 )

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
    # 215:1: parameters_2 : COMMA type_s ID ;
    #
    def parameters_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __ID23__ = nil
      type_s24 = nil


      begin
      # at line 216:6: COMMA type_s ID
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_2_1089 )
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_2_1091 )
      type_s24 = type_s
      @state.following.pop
      __ID23__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_2_1093 )

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
    # 219:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
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
    # 223:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      return_value = TypeCReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 224:5: ( type_s | ID )
      # at line 224:5: ( type_s | ID )
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
        # at line 224:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_1137 )
        type_s
        @state.following.pop

      when 2
        # at line 224:15: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_1141 )

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
    # 227:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      return_value = TypeFReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 228:5: ( type_s | VOID )
      # at line 228:5: ( type_s | VOID )
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
        # at line 228:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_1156 )
        type_s
        @state.following.pop

      when 2
        # at line 228:15: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_1160 )

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
    # 231:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 232:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_1174 )
      # at line 232:11: ( estatutes )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == FOR || look_22_0.between?( ID, IF ) || look_22_0 == INPUT || look_22_0 == PRINT || look_22_0 == WHILE )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 232:11: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_1176 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1179 )

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
    # 235:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      __AND25__ = nil
      __OR26__ = nil


      begin
      # at line 236:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1192 )
      expression
      @state.following.pop
      # at line 236:16: ( ( AND | OR ) expression )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == AND || look_24_0 == OR )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 236:17: ( AND | OR ) expression
          # at line 236:17: ( AND | OR )
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
            # at line 236:18: AND
            __AND25__ = match( AND, TOKENS_FOLLOWING_AND_IN_super_expression_1196 )

            # --> action
            $cuads.add_SE(__AND25__.text)
            # <-- action


          when 2
            # at line 236:51: OR
            __OR26__ = match( OR, TOKENS_FOLLOWING_OR_IN_super_expression_1201 )

            # --> action
            $cuads.add_SE(__OR26__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1206 )
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
    # 239:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
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
      # at line 240:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1221 )
      exp
      @state.following.pop
      # at line 240:9: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == EQ || look_26_0.between?( GEQ, GT ) || look_26_0 == LEQ || look_26_0 == LT || look_26_0 == NE )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 240:10: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          # at line 240:10: ( LT | LEQ | GT | GEQ | EQ | NE )
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
            # at line 240:11: LT
            __LT27__ = match( LT, TOKENS_FOLLOWING_LT_IN_expression_1225 )

            # --> action
            $cuads.add_E(__LT27__.text)
            # <-- action


          when 2
            # at line 240:42: LEQ
            __LEQ28__ = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expression_1231 )

            # --> action
            $cuads.add_E(__LEQ28__.text)
            # <-- action


          when 3
            # at line 240:75: GT
            __GT29__ = match( GT, TOKENS_FOLLOWING_GT_IN_expression_1237 )

            # --> action
            $cuads.add_E(__GT29__.text)
            # <-- action


          when 4
            # at line 240:106: GEQ
            __GEQ30__ = match( GEQ, TOKENS_FOLLOWING_GEQ_IN_expression_1243 )

            # --> action
            $cuads.add_E(__GEQ30__.text)
            # <-- action


          when 5
            # at line 240:139: EQ
            __EQ31__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_1249 )

            # --> action
            $cuads.add_E(__EQ31__.text)
            # <-- action


          when 6
            # at line 240:170: NE
            __NE32__ = match( NE, TOKENS_FOLLOWING_NE_IN_expression_1255 )

            # --> action
            $cuads.add_E(__NE32__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1261 )
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
    # 243:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __ADD33__ = nil
      __SUB34__ = nil


      begin
      # at line 244:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1276 )
      term
      @state.following.pop
      # at line 244:10: ( ( ADD | SUB ) term )*
      while true # decision 28
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == ADD || look_28_0 == SUB )
          alt_28 = 1

        end
        case alt_28
        when 1
          # at line 244:11: ( ADD | SUB ) term
          # at line 244:11: ( ADD | SUB )
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
            # at line 244:12: ADD
            __ADD33__ = match( ADD, TOKENS_FOLLOWING_ADD_IN_exp_1280 )

            # --> action
            $cuads.add_EXP(__ADD33__.text)
            # <-- action


          when 2
            # at line 244:47: SUB
            __SUB34__ = match( SUB, TOKENS_FOLLOWING_SUB_IN_exp_1286 )

            # --> action
            $cuads.add_EXP(__SUB34__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1291 )
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
    # 247:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT35__ = nil
      __DIV36__ = nil
      __MOD37__ = nil


      begin
      # at line 248:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1306 )
      factor
      @state.following.pop
      # at line 248:12: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 30
        alt_30 = 2
        look_30_0 = @input.peek( 1 )

        if ( look_30_0 == DIV || look_30_0.between?( MOD, MULT ) )
          alt_30 = 1

        end
        case alt_30
        when 1
          # at line 248:14: ( MULT | DIV | MOD ) factor
          # at line 248:14: ( MULT | DIV | MOD )
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
            # at line 248:16: MULT
            __MULT35__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1312 )

            # --> action
            $cuads.add_T(__MULT35__.text)
            # <-- action


          when 2
            # at line 248:51: DIV
            __DIV36__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1318 )

            # --> action
            $cuads.add_T(__DIV36__.text)
            # <-- action


          when 3
            # at line 248:83: MOD
            __MOD37__ = match( MOD, TOKENS_FOLLOWING_MOD_IN_term_1323 )

            # --> action
            $cuads.add_T(__MOD37__.text)
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1329 )
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
    # 251:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      begin
      # at line 252:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 252:5: ( LP super_expression RP | var_cte | func_call | method_call )
      alt_31 = 4
      case look_31 = @input.peek( 1 )
      when LP then alt_31 = 1
      when ID then case look_31 = @input.peek( 2 )
      when ADD, AND, COMMA, DIV, EQ, GEQ, GT, LB, LEQ, LT, MOD, MULT, NE, OR, RB, RP, SEMICOLON, SUB then alt_31 = 2
      when LP then alt_31 = 3
      when POINT then alt_31 = 4
      else
        raise NoViableAlternative( "", 31, 2 )

      end
      when C_BOOL, C_CHAR, C_FLOAT, C_INT then alt_31 = 2
      else
        raise NoViableAlternative( "", 31, 0 )

      end
      case alt_31
      when 1
        # at line 252:6: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1346 )

        # --> action
        $cuads.add_falseBottom
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1350 )
        super_expression
        @state.following.pop

        # --> action
        $cuads.rem_falseBottom
        # <-- action

        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1354 )

      when 2
        # at line 252:83: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1358 )
        var_cte
        @state.following.pop

      when 3
        # at line 252:95: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1364 )
        func_call
        @state.following.pop

      when 4
        # at line 252:107: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_1368 )
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
    # 255:1: var_cte : ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      __C_INT39__ = nil
      __C_FLOAT40__ = nil
      __C_CHAR41__ = nil
      __C_BOOL42__ = nil
      var_access38 = nil


      begin
      # at line 256:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 256:5: ( var_access | C_INT | C_FLOAT | C_CHAR | C_BOOL )
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
        # at line 256:6: var_access
        @state.following.push( TOKENS_FOLLOWING_var_access_IN_var_cte_1383 )
        var_access38 = var_access
        @state.following.pop

        # --> action
        $cuads.add_operando(( var_access38 && @input.to_s( var_access38.start, var_access38.stop ) ), $scope)
        # <-- action


      when 2
        # at line 257:5: C_INT
        __C_INT39__ = match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_1391 )

        # --> action
        $program.add_const(__C_INT39__.text, "int")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_INT39__.text)
        # <-- action


      when 3
        # at line 258:5: C_FLOAT
        __C_FLOAT40__ = match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1401 )

        # --> action
        $program.add_const(__C_FLOAT40__.text, "float")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_FLOAT40__.text)
        # <-- action


      when 4
        # at line 259:5: C_CHAR
        __C_CHAR41__ = match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1412 )

        # --> action
        $program.add_const(__C_CHAR41__.text, "char")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_CHAR41__.text)
        # <-- action


      when 5
        # at line 260:5: C_BOOL
        __C_BOOL42__ = match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1423 )

        # --> action
        $program.add_const(__C_BOOL42__.text, "bool")
        # <-- action


        # --> action
        $cuads.add_oper_const(__C_BOOL42__.text)
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

    VarAccessReturnValue = define_return_scope

    #
    # parser rule var_access
    #
    # (in Foma.g)
    # 263:1: var_access : ID ( LB exp RB ( LB exp RB )? )? ;
    #
    def var_access
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      return_value = VarAccessReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 264:5: ID ( LB exp RB ( LB exp RB )? )?
      match( ID, TOKENS_FOLLOWING_ID_IN_var_access_1442 )
      # at line 264:8: ( LB exp RB ( LB exp RB )? )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == LB )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 264:9: LB exp RB ( LB exp RB )?
        match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1445 )

        # --> action
        $cuads.add_falseBottom
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1450 )
        exp
        @state.following.pop

        # --> action
        $cuads.rem_falseBottom
        # <-- action


        # --> action
        $cuads.drop_opp
        # <-- action

        match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1455 )
        # at line 264:90: ( LB exp RB )?
        alt_33 = 2
        look_33_0 = @input.peek( 1 )

        if ( look_33_0 == LB )
          alt_33 = 1
        end
        case alt_33
        when 1
          # at line 264:91: LB exp RB
          match( LB, TOKENS_FOLLOWING_LB_IN_var_access_1458 )

          # --> action
          $cuads.add_falseBottom
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_exp_IN_var_access_1463 )
          exp
          @state.following.pop

          # --> action
          $cuads.rem_falseBottom
          # <-- action


          # --> action
          $cuads.drop_opp
          # <-- action

          match( RB, TOKENS_FOLLOWING_RB_IN_var_access_1469 )

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
    # 267:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 268:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      # at line 268:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      alt_35 = 8
      case look_35 = @input.peek( 1 )
      when ID then case look_35 = @input.peek( 2 )
      when ASSIGN, LB then alt_35 = 1
      when LP then alt_35 = 7
      when POINT then alt_35 = 8
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
        # at line 268:6: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_1487 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1489 )

      when 2
        # at line 268:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_1493 )
        condition
        @state.following.pop

      when 3
        # at line 268:37: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_1497 )
        while_loop
        @state.following.pop

      when 4
        # at line 268:50: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_1501 )
        for_loop
        @state.following.pop

      when 5
        # at line 268:61: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_1505 )
        print
        @state.following.pop

      when 6
        # at line 268:69: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_1509 )
        input
        @state.following.pop

      when 7
        # at line 268:77: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_1513 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1515 )

      when 8
        # at line 268:99: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_1519 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1521 )

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
    # 271:1: estatutes_f : ( estatutes | r_return ) ;
    #
    def estatutes_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      begin
      # at line 272:5: ( estatutes | r_return )
      # at line 272:5: ( estatutes | r_return )
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
        # at line 272:6: estatutes
        @state.following.push( TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1537 )
        estatutes
        @state.following.pop

      when 2
        # at line 272:18: r_return
        @state.following.push( TOKENS_FOLLOWING_r_return_IN_estatutes_f_1541 )
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
    # 275:1: assign : var_access ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      var_access43 = nil


      begin
      # at line 276:5: var_access ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_var_access_IN_assign_1555 )
      var_access43 = var_access
      @state.following.pop

      # --> action
      $cuads.add_operando(( var_access43 && @input.to_s( var_access43.start, var_access43.stop ) ), $scope)
      # <-- action

      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_1559 )

      # --> action
      $cuads.add_assign()
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_1563 )
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
    # 279:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )


      begin
      # at line 280:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1578 )
      match( LP, TOKENS_FOLLOWING_LP_IN_condition_1580 )

      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1584 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_condition_1589 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1591 )
      block
      @state.following.pop
      # at line 280:109: ( ELSE block )?
      alt_37 = 2
      look_37_0 = @input.peek( 1 )

      if ( look_37_0 == ELSE )
        alt_37 = 1
      end
      case alt_37
      when 1
        # at line 280:110: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1594 )

        # --> action
        $cuads.goto_else
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1599 )
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
    # 283:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )


      begin
      # at line 284:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1616 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_1618 )

      # --> action
      $cuads.save_spot
      # <-- action


      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1623 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_1628 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1630 )
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
    # 287:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )


      begin
      # at line 288:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1645 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_1647 )
      # at line 288:12: ( assign )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ID )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 288:12: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1649 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1652 )

      # --> action
      $cuads.save_spot
      # <-- action


      # --> action
      $cuads.add_falseBottom
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_1657 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.rem_falseBottom
      # <-- action


      # --> action
      $cuads.goto_falso
      # <-- action

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1663 )

      # --> action
      $cuads.add_swap
      # <-- action

      # at line 288:167: ( assign )?
      alt_39 = 2
      look_39_0 = @input.peek( 1 )

      if ( look_39_0 == ID )
        alt_39 = 1
      end
      case alt_39
      when 1
        # at line 288:167: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1666 )
        assign
        @state.following.pop

      end

      # --> action
      $cuads.add_swap
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_1671 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1673 )
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
    # 291:1: print : PRINT LP ( super_expression ( print_2 )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )


      begin
      # at line 292:5: PRINT LP ( super_expression ( print_2 )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_1689 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_1691 )
      # at line 292:14: ( super_expression ( print_2 )* )
      # at line 292:15: super_expression ( print_2 )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1694 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.emptyStack
      # <-- action


      # --> action
      $cuads.do_print
      # <-- action

      # at line 292:70: ( print_2 )*
      while true # decision 40
        alt_40 = 2
        look_40_0 = @input.peek( 1 )

        if ( look_40_0 == COMMA )
          alt_40 = 1

        end
        case alt_40
        when 1
          # at line 292:70: print_2
          @state.following.push( TOKENS_FOLLOWING_print_2_IN_print_1698 )
          print_2
          @state.following.pop

        else
          break # out of loop for decision 40
        end
      end # loop for decision 40


      match( RP, TOKENS_FOLLOWING_RP_IN_print_1703 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_1705 )

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
    # 295:1: print_2 : COMMA super_expression ;
    #
    def print_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )


      begin
      # at line 296:6: COMMA super_expression
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_2_1719 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_2_1721 )
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
    # 299:1: input : INPUT LP ID RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )


      __ID44__ = nil


      begin
      # at line 300:5: INPUT LP ID RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_1737 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_1739 )
      __ID44__ = match( ID, TOKENS_FOLLOWING_ID_IN_input_1741 )

      # --> action
      $cuads.add_operando(__ID44__.text, $scope)
      # <-- action


      # --> action
      $cuads.do_input
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_input_1747 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_1749 )

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
    # 303:1: func_call : ID LP ( call_params )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )


      __ID45__ = nil


      begin
      # at line 304:5: ID LP ( call_params )? RP
      __ID45__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1762 )

      # --> action
      $cuads.era(__ID45__.text)
      # <-- action

      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_1766 )

      # --> action
      $params = 0
      # <-- action

      # at line 304:50: ( call_params )?
      alt_41 = 2
      look_41_0 = @input.peek( 1 )

      if ( look_41_0.between?( C_BOOL, C_INT ) || look_41_0 == ID || look_41_0 == LP )
        alt_41 = 1
      end
      case alt_41
      when 1
        # at line 304:50: call_params
        @state.following.push( TOKENS_FOLLOWING_call_params_IN_func_call_1770 )
        call_params
        @state.following.pop

      end

      # --> action
      $cuads.go_sub(__ID45__.text)
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_1775 )

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
    # parser rule call_params
    #
    # (in Foma.g)
    # 307:1: call_params : super_expression ( call_params2 )* ;
    #
    def call_params
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )


      begin
      # at line 308:6: super_expression ( call_params2 )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_call_params_1789 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.emptyStack
      # <-- action


      # --> action
      $cuads.params($params)
      # <-- action


      # --> action
      $params +=1
      # <-- action

      # at line 308:84: ( call_params2 )*
      while true # decision 42
        alt_42 = 2
        look_42_0 = @input.peek( 1 )

        if ( look_42_0 == COMMA )
          alt_42 = 1

        end
        case alt_42
        when 1
          # at line 308:84: call_params2
          @state.following.push( TOKENS_FOLLOWING_call_params2_IN_call_params_1795 )
          call_params2
          @state.following.pop

        else
          break # out of loop for decision 42
        end
      end # loop for decision 42


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
    # parser rule call_params2
    #
    # (in Foma.g)
    # 311:1: call_params2 : COMMA super_expression ;
    #
    def call_params2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )


      begin
      # at line 312:7: COMMA super_expression
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_call_params2_1811 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_call_params2_1813 )
      super_expression
      @state.following.pop

      # --> action
      $cuads.emptyStack
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
        # trace_out( __method__, 40 )


      end

      return 
    end



    #
    # parser rule method_call
    #
    # (in Foma.g)
    # 315:1: method_call : ID POINT method_call_2 LP ( call_params )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )


      __ID46__ = nil


      begin
      # at line 316:5: ID POINT method_call_2 LP ( call_params )? RP
      __ID46__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1832 )

      # --> action
      $varType = $program.dirFunc.functions["global"].dirVars.variables[__ID46__.text].type
      # <-- action

      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_1837 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1839 )
      method_call_2
      @state.following.pop
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_1841 )
      # at line 316:117: ( call_params )?
      alt_43 = 2
      look_43_0 = @input.peek( 1 )

      if ( look_43_0.between?( C_BOOL, C_INT ) || look_43_0 == ID || look_43_0 == LP )
        alt_43 = 1
      end
      case alt_43
      when 1
        # at line 316:117: call_params
        @state.following.push( TOKENS_FOLLOWING_call_params_IN_method_call_1843 )
        call_params
        @state.following.pop

      end

      # --> action
      $cuads.go_sub("#{$varType}.#{$varId}")
      # <-- action

      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_1847 )

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
    # parser rule method_call_2
    #
    # (in Foma.g)
    # 319:1: method_call_2 : ID ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )


      __ID47__ = nil


      begin
      # at line 320:5: ID
      __ID47__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1860 )

      # --> action
      $varId = __ID47__.text
      # <-- action


      # --> action
      $cuads.era("#{$varType}.#{$varId}")
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
    # parser rule r_return
    #
    # (in Foma.g)
    # 323:1: r_return : RETURN super_expression SEMICOLON ;
    #
    def r_return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )


      begin
      # at line 324:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_r_return_1876 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_r_return_1878 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1880 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 43 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_585 = Set[ 7, 8, 9, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_variables_IN_commence_596 = Set[ 7, 8, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_function_IN_commence_607 = Set[ 21, 43 ]
    TOKENS_FOLLOWING_program_IN_commence_615 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_648 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_652 = Set[ 26, 50 ]
    TOKENS_FOLLOWING_inherits_IN_r_class_657 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_r_class_660 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_665 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_673 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_method_IN_r_class_678 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_686 = Set[ 1 ]
    TOKENS_FOLLOWING_INHER_IN_inherits_700 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_inherits_702 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_717 = Set[ 7, 8, 19, 28, 52 ]
    TOKENS_FOLLOWING_type_f_IN_function_719 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_721 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_function_726 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_function_728 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_function_734 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_function_741 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_function_745 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_760 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_762 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_method_766 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_method_768 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_method_773 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_method_783 = Set[ 20, 24, 25, 27, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_method_788 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_804 = Set[ 32 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_808 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_constructor_811 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_constructor_816 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_constructor_821 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_828 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_843 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_845 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_program_849 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_program_855 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_program_862 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_program_866 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_var_IN_variables_880 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_arr_IN_variables_884 = Set[ 1 ]
    TOKENS_FOLLOWING_dec_mat_IN_variables_888 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_dec_var_902 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_906 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_dec_var_2_IN_dec_var_910 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_var_913 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_dec_var_2_926 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_var_2_928 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_arr_943 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_arr_945 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_arr_947 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_arr_949 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_arr_951 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_arr_953 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_dec_mat_968 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_dec_mat_970 = Set[ 29 ]
    TOKENS_FOLLOWING_LB_IN_dec_mat_972 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dec_mat_974 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dec_mat_976 = Set[ 29 ]
    TOKENS_FOLLOWING_dim_2_IN_dec_mat_979 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_dec_mat_981 = Set[ 1 ]
    TOKENS_FOLLOWING_LB_IN_dim_2_996 = Set[ 15 ]
    TOKENS_FOLLOWING_C_INT_IN_dim_2_998 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_dim_2_1000 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_1015 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_1019 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_attributes_2_IN_attributes_1023 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_1027 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_2_1040 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_2_1042 = Set[ 1 ]
    TOKENS_FOLLOWING_LP_IN_parameters_1057 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_1060 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1062 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_parameters_2_IN_parameters_1068 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_parameters_1075 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_2_1089 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_2_1091 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_2_1093 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_1137 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_1141 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_1156 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_1160 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_1174 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_block_1176 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_block_1179 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1192 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_AND_IN_super_expression_1196 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_OR_IN_super_expression_1201 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1206 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_exp_IN_expression_1221 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_LT_IN_expression_1225 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_LEQ_IN_expression_1231 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_GT_IN_expression_1237 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_GEQ_IN_expression_1243 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_EQ_IN_expression_1249 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_NE_IN_expression_1255 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_expression_1261 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1276 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_ADD_IN_exp_1280 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_SUB_IN_exp_1286 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_term_IN_exp_1291 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_factor_IN_term_1306 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_MULT_IN_term_1312 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_DIV_IN_term_1318 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_MOD_IN_term_1323 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_1329 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1346 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1350 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_factor_1354 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1358 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1364 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_1368 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_var_cte_1383 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_1391 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1401 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1412 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1423 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_var_access_1442 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1445 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1450 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1455 = Set[ 1, 29 ]
    TOKENS_FOLLOWING_LB_IN_var_access_1458 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_var_access_1463 = Set[ 44 ]
    TOKENS_FOLLOWING_RB_IN_var_access_1469 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_1487 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1489 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_1493 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_1497 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_1501 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_1505 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_1509 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_1513 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1515 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_1519 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1521 = Set[ 1 ]
    TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1537 = Set[ 1 ]
    TOKENS_FOLLOWING_r_return_IN_estatutes_f_1541 = Set[ 1 ]
    TOKENS_FOLLOWING_var_access_IN_assign_1555 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_1559 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_1563 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1578 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_1580 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1584 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_condition_1589 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1591 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1594 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1599 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1616 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_1618 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1623 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_1628 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1630 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1645 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_1647 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1649 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1652 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_1657 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1663 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1666 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_1671 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1673 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_1689 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_1691 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1694 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_print_2_IN_print_1698 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_print_1703 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_1705 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_print_2_1719 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_2_1721 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_1737 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_1739 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_input_1741 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_input_1747 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_1749 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1762 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_1766 = Set[ 12, 13, 14, 15, 24, 32, 47 ]
    TOKENS_FOLLOWING_call_params_IN_func_call_1770 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_func_call_1775 = Set[ 1 ]
    TOKENS_FOLLOWING_super_expression_IN_call_params_1789 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_call_params2_IN_call_params_1795 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_COMMA_IN_call_params2_1811 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_call_params2_1813 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1832 = Set[ 41 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_1837 = Set[ 24 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1839 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_1841 = Set[ 12, 13, 14, 15, 24, 32, 47 ]
    TOKENS_FOLLOWING_call_params_IN_method_call_1843 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_method_call_1847 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1860 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_r_return_1876 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_r_return_1878 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_r_return_1880 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
