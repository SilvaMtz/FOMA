#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-06 20:59:24
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

    RULE_METHODS = [ :commence, :r_class, :function, :method, :constructor, 
                     :program, :variables, :attributes, :parameters, :type_s, 
                     :type_c, :type_f, :block, :super_expression, :expression, 
                     :exp, :term, :factor, :var_cte, :id, :estatutes, :estatutes_f, 
                     :assign, :condition, :while_loop, :for_loop, :print, 
                     :input, :func_call, :method_call, :return ].freeze

    include TokenData

    begin
      generated_using( "Foma.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 131:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 132:5: ( r_class )* ( variables )* ( function )* program
      # at line 132:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 132:7: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_commence_583 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 132:18: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 132:19: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_commence_589 )
          variables
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      # at line 132:31: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 132:32: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_commence_594 )
          function
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      @state.following.push( TOKENS_FOLLOWING_program_IN_commence_598 )
      program
      @state.following.pop

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
    # 136:1: r_class : CLASS ID ( INHER ID )? START ( attributes )* ( constructor )+ ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 137:5: CLASS ID ( INHER ID )? START ( attributes )* ( constructor )+ ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_617 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_619 )
      # at line 137:14: ( INHER ID )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 137:16: INHER ID
        match( INHER, TOKENS_FOLLOWING_INHER_IN_r_class_623 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_625 )

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_630 )
      # at line 137:34: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 137:36: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_634 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      # at file 137:50: ( constructor )+
      match_count_6 = 0
      while true
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == ID )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 137:52: constructor
          @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_641 )
          constructor
          @state.following.pop

        else
          match_count_6 > 0 and break
          eee = EarlyExit(6)


          raise eee
        end
        match_count_6 += 1
      end


      # at line 137:67: ( method )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER || look_7_0 == VOID )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 137:69: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_648 )
          method
          @state.following.pop

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_653 )

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
    # parser rule function
    #
    # (in Foma.g)
    # 140:1: function : FUNCTION type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 141:5: FUNCTION type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_666 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_668 )
      type_f
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_function_670 )
      match( LP, TOKENS_FOLLOWING_LP_IN_function_672 )
      # at line 141:27: ( parameters ( COMMA parameters )* )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0.between?( BOOL, CHAR ) || look_9_0 == FLOAT || look_9_0 == INTEGER )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 141:28: parameters ( COMMA parameters )*
        @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_675 )
        parameters
        @state.following.pop
        # at line 141:39: ( COMMA parameters )*
        while true # decision 8
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == COMMA )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 141:40: COMMA parameters
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_function_678 )
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_680 )
            parameters
            @state.following.pop

          else
            break # out of loop for decision 8
          end
        end # loop for decision 8


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_function_686 )
      match( START, TOKENS_FOLLOWING_START_IN_function_688 )
      # at line 141:70: ( variables | estatutes_f )*
      while true # decision 10
        alt_10 = 3
        case look_10 = @input.peek( 1 )
        when BOOL, CHAR, FLOAT, INTEGER then alt_10 = 1
        when ID then look_10_3 = @input.peek( 2 )

        if ( look_10_3 == ASSIGN || look_10_3 == LP || look_10_3 == POINT )
          alt_10 = 2
        elsif ( look_10_3 == ID )
          alt_10 = 1

        end
        when FOR, IF, INPUT, PRINT, RETURN, WHILE then alt_10 = 2
        end
        case alt_10
        when 1
          # at line 141:72: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_function_692 )
          variables
          @state.following.pop

        when 2
          # at line 141:84: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_function_696 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_701 )

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
    # parser rule method
    #
    # (in Foma.g)
    # 144:1: method : type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 145:5: type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_714 )
      type_f
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_method_716 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_718 )
      # at line 145:18: ( parameters ( COMMA parameters )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0.between?( BOOL, CHAR ) || look_12_0 == FLOAT || look_12_0 == INTEGER )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 145:19: parameters ( COMMA parameters )*
        @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_721 )
        parameters
        @state.following.pop
        # at line 145:30: ( COMMA parameters )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 145:31: COMMA parameters
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_724 )
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_726 )
            parameters
            @state.following.pop

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_732 )
      match( START, TOKENS_FOLLOWING_START_IN_method_734 )
      # at line 145:61: ( variables | estatutes_f )*
      while true # decision 13
        alt_13 = 3
        case look_13 = @input.peek( 1 )
        when BOOL, CHAR, FLOAT, INTEGER then alt_13 = 1
        when ID then look_13_3 = @input.peek( 2 )

        if ( look_13_3 == ASSIGN || look_13_3 == LP || look_13_3 == POINT )
          alt_13 = 2
        elsif ( look_13_3 == ID )
          alt_13 = 1

        end
        when FOR, IF, INPUT, PRINT, RETURN, WHILE then alt_13 = 2
        end
        case alt_13
        when 1
          # at line 145:63: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_method_738 )
          variables
          @state.following.pop

        when 2
          # at line 145:75: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_method_742 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_747 )

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
    # parser rule constructor
    #
    # (in Foma.g)
    # 148:1: constructor : ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 149:5: ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END
      match( ID, TOKENS_FOLLOWING_ID_IN_constructor_760 )
      match( LP, TOKENS_FOLLOWING_LP_IN_constructor_762 )
      # at line 149:11: ( parameters ( COMMA parameters )* )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0.between?( BOOL, CHAR ) || look_15_0 == FLOAT || look_15_0 == INTEGER )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 149:12: parameters ( COMMA parameters )*
        @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_765 )
        parameters
        @state.following.pop
        # at line 149:23: ( COMMA parameters )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == COMMA )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 149:24: COMMA parameters
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_constructor_768 )
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_770 )
            parameters
            @state.following.pop

          else
            break # out of loop for decision 14
          end
        end # loop for decision 14


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_constructor_776 )
      match( START, TOKENS_FOLLOWING_START_IN_constructor_778 )
      # at line 149:54: ( variables | estatutes_f )*
      while true # decision 16
        alt_16 = 3
        case look_16 = @input.peek( 1 )
        when BOOL, CHAR, FLOAT, INTEGER then alt_16 = 1
        when ID then look_16_3 = @input.peek( 2 )

        if ( look_16_3 == ASSIGN || look_16_3 == LP || look_16_3 == POINT )
          alt_16 = 2
        elsif ( look_16_3 == ID )
          alt_16 = 1

        end
        when FOR, IF, INPUT, PRINT, RETURN, WHILE then alt_16 = 2
        end
        case alt_16
        when 1
          # at line 149:56: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_constructor_782 )
          variables
          @state.following.pop

        when 2
          # at line 149:68: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_constructor_786 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 16
        end
      end # loop for decision 16

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_791 )

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
    # parser rule program
    #
    # (in Foma.g)
    # 152:1: program : PROGRAM ID START ( variables | estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 153:5: PROGRAM ID START ( variables | estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_804 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_806 )
      match( START, TOKENS_FOLLOWING_START_IN_program_808 )
      # at line 153:22: ( variables | estatutes )*
      while true # decision 17
        alt_17 = 3
        case look_17 = @input.peek( 1 )
        when BOOL, CHAR, FLOAT, INTEGER then alt_17 = 1
        when ID then look_17_3 = @input.peek( 2 )

        if ( look_17_3 == ASSIGN || look_17_3 == LP || look_17_3 == POINT )
          alt_17 = 2
        elsif ( look_17_3 == ID )
          alt_17 = 1

        end
        when FOR, IF, INPUT, PRINT, WHILE then alt_17 = 2
        end
        case alt_17
        when 1
          # at line 153:24: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_program_812 )
          variables
          @state.following.pop

        when 2
          # at line 153:36: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_816 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_821 )

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
    # parser rule variables
    #
    # (in Foma.g)
    # 156:1: variables : type_c ID ( COMMA ID )* SEMICOLON ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 157:5: type_c ID ( COMMA ID )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_variables_834 )
      type_c
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_variables_836 )
      # at line 157:15: ( COMMA ID )*
      while true # decision 18
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == COMMA )
          alt_18 = 1

        end
        case alt_18
        when 1
          # at line 157:17: COMMA ID
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_variables_840 )
          match( ID, TOKENS_FOLLOWING_ID_IN_variables_842 )

        else
          break # out of loop for decision 18
        end
      end # loop for decision 18

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_variables_847 )

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
    # parser rule attributes
    #
    # (in Foma.g)
    # 160:1: attributes : type_s ID ( COMMA ID )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 161:5: type_s ID ( COMMA ID )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_860 )
      type_s
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_attributes_862 )
      # at line 161:15: ( COMMA ID )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == COMMA )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 161:17: COMMA ID
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_866 )
          match( ID, TOKENS_FOLLOWING_ID_IN_attributes_868 )

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_873 )

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
    # parser rule parameters
    #
    # (in Foma.g)
    # 164:1: parameters : type_s ID ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 165:5: type_s ID
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_886 )
      type_s
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_parameters_888 )

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
    # parser rule type_s
    #
    # (in Foma.g)
    # 168:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
    #
    def type_s
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 
      if @input.peek( 1 ).between?( BOOL, CHAR ) || @input.peek(1) == FLOAT || @input.peek(1) == INTEGER
        @input.consume
        @state.error_recovery = false

      else
        mse = MismatchedSet( nil )
        raise mse

      end



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
    # parser rule type_c
    #
    # (in Foma.g)
    # 172:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 173:5: ( type_s | ID )
      # at line 173:5: ( type_s | ID )
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
        # at line 173:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_929 )
        type_s
        @state.following.pop

      when 2
        # at line 173:15: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_933 )

      end

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
    # parser rule type_f
    #
    # (in Foma.g)
    # 176:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 177:5: ( type_s | VOID )
      # at line 177:5: ( type_s | VOID )
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
        # at line 177:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_948 )
        type_s
        @state.following.pop

      when 2
        # at line 177:15: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_952 )

      end

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
    # parser rule block
    #
    # (in Foma.g)
    # 180:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 181:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_966 )
      # at line 181:11: ( estatutes )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == FOR || look_22_0.between?( ID, IF ) || look_22_0 == INPUT || look_22_0 == PRINT || look_22_0 == WHILE )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 181:11: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_968 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_971 )

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
    # parser rule super_expression
    #
    # (in Foma.g)
    # 184:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 185:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_984 )
      expression
      @state.following.pop
      # at line 185:16: ( ( AND | OR ) expression )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == AND || look_23_0 == OR )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 185:17: ( AND | OR ) expression
          if @input.peek(1) == AND || @input.peek(1) == OR
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_995 )
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
        # trace_out( __method__, 14 )


      end

      return 
    end



    #
    # parser rule expression
    #
    # (in Foma.g)
    # 188:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 189:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1010 )
      exp
      @state.following.pop
      # at line 189:9: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == EQ || look_24_0.between?( GEQ, GT ) || look_24_0 == LEQ || look_24_0 == LT || look_24_0 == NE )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 189:10: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          if @input.peek(1) == EQ || @input.peek( 1 ).between?( GEQ, GT ) || @input.peek(1) == LEQ || @input.peek(1) == LT || @input.peek(1) == NE
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1037 )
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
        # trace_out( __method__, 15 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Foma.g)
    # 192:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 193:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1052 )
      term
      @state.following.pop
      # at line 193:10: ( ( ADD | SUB ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == ADD || look_25_0 == SUB )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 193:11: ( ADD | SUB ) term
          if @input.peek(1) == ADD || @input.peek(1) == SUB
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1063 )
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
        # trace_out( __method__, 16 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in Foma.g)
    # 196:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 197:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1078 )
      factor
      @state.following.pop
      # at line 197:12: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0.between?( MOD, MULT ) )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 197:14: ( MULT | DIV | MOD ) factor
          if @input.peek(1) == DIV || @input.peek( 1 ).between?( MOD, MULT )
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1096 )
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
        # trace_out( __method__, 17 )


      end

      return 
    end



    #
    # parser rule factor
    #
    # (in Foma.g)
    # 200:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 201:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 201:5: ( LP super_expression RP | var_cte | func_call | method_call )
      alt_27 = 4
      case look_27 = @input.peek( 1 )
      when LP then alt_27 = 1
      when ID then case look_27 = @input.peek( 2 )
      when LP then alt_27 = 3
      when POINT then alt_27 = 4
      when ADD, AND, COMMA, DIV, EQ, GEQ, GT, LEQ, LT, MOD, MULT, NE, OR, RP, SEMICOLON, SUB then alt_27 = 2
      else
        raise NoViableAlternative( "", 27, 2 )

      end
      when C_BOOL, C_CHAR, C_FLOAT, C_INT then alt_27 = 2
      else
        raise NoViableAlternative( "", 27, 0 )

      end
      case alt_27
      when 1
        # at line 201:6: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1113 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1115 )
        super_expression
        @state.following.pop
        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1117 )

      when 2
        # at line 201:31: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1121 )
        var_cte
        @state.following.pop

      when 3
        # at line 201:41: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1125 )
        func_call
        @state.following.pop

      when 4
        # at line 201:53: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_1129 )
        method_call
        @state.following.pop

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )


      end

      return 
    end



    #
    # parser rule var_cte
    #
    # (in Foma.g)
    # 204:1: var_cte : ( id | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 205:5: ( id | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 205:5: ( id | C_INT | C_FLOAT | C_CHAR | C_BOOL )
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
        # at line 205:6: id
        @state.following.push( TOKENS_FOLLOWING_id_IN_var_cte_1144 )
        id
        @state.following.pop

      when 2
        # at line 205:11: C_INT
        match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_1148 )

      when 3
        # at line 205:19: C_FLOAT
        match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1152 )

      when 4
        # at line 205:29: C_CHAR
        match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1156 )

      when 5
        # at line 205:38: C_BOOL
        match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1160 )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )


      end

      return 
    end



    #
    # parser rule id
    #
    # (in Foma.g)
    # 208:1: id : ID ;
    #
    def id
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 209:5: ID
      match( ID, TOKENS_FOLLOWING_ID_IN_id_1174 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return 
    end



    #
    # parser rule estatutes
    #
    # (in Foma.g)
    # 212:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 213:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      # at line 213:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      alt_29 = 8
      case look_29 = @input.peek( 1 )
      when ID then case look_29 = @input.peek( 2 )
      when LP then alt_29 = 7
      when POINT then alt_29 = 8
      when ASSIGN then alt_29 = 1
      else
        raise NoViableAlternative( "", 29, 1 )

      end
      when IF then alt_29 = 2
      when WHILE then alt_29 = 3
      when FOR then alt_29 = 4
      when PRINT then alt_29 = 5
      when INPUT then alt_29 = 6
      else
        raise NoViableAlternative( "", 29, 0 )

      end
      case alt_29
      when 1
        # at line 213:6: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_1188 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1190 )

      when 2
        # at line 213:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_1194 )
        condition
        @state.following.pop

      when 3
        # at line 213:37: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_1198 )
        while_loop
        @state.following.pop

      when 4
        # at line 213:50: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_1202 )
        for_loop
        @state.following.pop

      when 5
        # at line 213:61: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_1206 )
        print
        @state.following.pop

      when 6
        # at line 213:69: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_1210 )
        input
        @state.following.pop

      when 7
        # at line 213:77: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_1214 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1216 )

      when 8
        # at line 213:99: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_1220 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1222 )

      end

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
    # parser rule estatutes_f
    #
    # (in Foma.g)
    # 216:1: estatutes_f : ( estatutes | return ) ;
    #
    def estatutes_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 217:5: ( estatutes | return )
      # at line 217:5: ( estatutes | return )
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == FOR || look_30_0.between?( ID, IF ) || look_30_0 == INPUT || look_30_0 == PRINT || look_30_0 == WHILE )
        alt_30 = 1
      elsif ( look_30_0 == RETURN )
        alt_30 = 2
      else
        raise NoViableAlternative( "", 30, 0 )

      end
      case alt_30
      when 1
        # at line 217:6: estatutes
        @state.following.push( TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1238 )
        estatutes
        @state.following.pop

      when 2
        # at line 217:18: return
        @state.following.push( TOKENS_FOLLOWING_return_IN_estatutes_f_1242 )
        return
        @state.following.pop

      end

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
    # parser rule assign
    #
    # (in Foma.g)
    # 220:1: assign : id ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 221:5: id ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_id_IN_assign_1256 )
      id
      @state.following.pop
      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_1258 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_1260 )
      super_expression
      @state.following.pop

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
    # parser rule condition
    #
    # (in Foma.g)
    # 224:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 225:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1273 )
      match( LP, TOKENS_FOLLOWING_LP_IN_condition_1275 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1277 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_condition_1279 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1281 )
      block
      @state.following.pop
      # at line 225:37: ( ELSE block )?
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0 == ELSE )
        alt_31 = 1
      end
      case alt_31
      when 1
        # at line 225:38: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1284 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1286 )
        block
        @state.following.pop

      end

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
    # parser rule while_loop
    #
    # (in Foma.g)
    # 228:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      begin
      # at line 229:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1301 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_1303 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1305 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_1307 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1309 )
      block
      @state.following.pop

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
    # parser rule for_loop
    #
    # (in Foma.g)
    # 232:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      begin
      # at line 233:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1322 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_1324 )
      # at line 233:12: ( assign )?
      alt_32 = 2
      look_32_0 = @input.peek( 1 )

      if ( look_32_0 == ID )
        alt_32 = 1
      end
      case alt_32
      when 1
        # at line 233:12: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1326 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1329 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_1331 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1333 )
      # at line 233:57: ( assign )?
      alt_33 = 2
      look_33_0 = @input.peek( 1 )

      if ( look_33_0 == ID )
        alt_33 = 1
      end
      case alt_33
      when 1
        # at line 233:57: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1335 )
        assign
        @state.following.pop

      end
      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_1338 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1340 )
      block
      @state.following.pop

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
    # parser rule print
    #
    # (in Foma.g)
    # 236:1: print : PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      begin
      # at line 237:5: PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_1353 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_1355 )
      # at line 237:14: ( super_expression ( COMMA super_expression )* )
      # at line 237:15: super_expression ( COMMA super_expression )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1358 )
      super_expression
      @state.following.pop
      # at line 237:32: ( COMMA super_expression )*
      while true # decision 34
        alt_34 = 2
        look_34_0 = @input.peek( 1 )

        if ( look_34_0 == COMMA )
          alt_34 = 1

        end
        case alt_34
        when 1
          # at line 237:34: COMMA super_expression
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_1362 )
          @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1364 )
          super_expression
          @state.following.pop

        else
          break # out of loop for decision 34
        end
      end # loop for decision 34


      match( RP, TOKENS_FOLLOWING_RP_IN_print_1370 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_1372 )

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
    # parser rule input
    #
    # (in Foma.g)
    # 240:1: input : INPUT LP id RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      begin
      # at line 241:5: INPUT LP id RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_1385 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_1387 )
      @state.following.push( TOKENS_FOLLOWING_id_IN_input_1389 )
      id
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_input_1391 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_1393 )

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
    # parser rule func_call
    #
    # (in Foma.g)
    # 244:1: func_call : ID LP ( ID ( COMMA ID )* )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 245:5: ID LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1406 )
      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_1408 )
      # at line 245:11: ( ID ( COMMA ID )* )?
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == ID )
        alt_36 = 1
      end
      case alt_36
      when 1
        # at line 245:12: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1411 )
        # at line 245:15: ( COMMA ID )*
        while true # decision 35
          alt_35 = 2
          look_35_0 = @input.peek( 1 )

          if ( look_35_0 == COMMA )
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 245:16: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_1414 )
            match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1416 )

          else
            break # out of loop for decision 35
          end
        end # loop for decision 35


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_1422 )

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
    # parser rule method_call
    #
    # (in Foma.g)
    # 248:1: method_call : ID POINT LP ( ID ( COMMA ID )* )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      begin
      # at line 249:5: ID POINT LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1435 )
      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_1437 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_1439 )
      # at line 249:17: ( ID ( COMMA ID )* )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ID )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 249:18: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1442 )
        # at line 249:21: ( COMMA ID )*
        while true # decision 37
          alt_37 = 2
          look_37_0 = @input.peek( 1 )

          if ( look_37_0 == COMMA )
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 249:22: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_1445 )
            match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1447 )

          else
            break # out of loop for decision 37
          end
        end # loop for decision 37


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_1453 )

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
    # parser rule return
    #
    # (in Foma.g)
    # 252:1: return : RETURN super_expression SEMICOLON ;
    #
    def return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      begin
      # at line 253:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_1465 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_return_1467 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_return_1469 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_583 = Set[ 7, 8, 9, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_variables_IN_commence_589 = Set[ 7, 8, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_function_IN_commence_594 = Set[ 21, 43 ]
    TOKENS_FOLLOWING_program_IN_commence_598 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_617 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_619 = Set[ 26, 50 ]
    TOKENS_FOLLOWING_INHER_IN_r_class_623 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_625 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_r_class_630 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_634 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_641 = Set[ 7, 8, 19, 24, 28, 48, 52 ]
    TOKENS_FOLLOWING_method_IN_r_class_648 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_653 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_666 = Set[ 7, 8, 19, 28, 52 ]
    TOKENS_FOLLOWING_type_f_IN_function_668 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_670 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_function_672 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_parameters_IN_function_675 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_function_678 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_parameters_IN_function_680 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_function_686 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_function_688 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_function_692 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_function_696 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_function_701 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_714 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_716 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_718 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_parameters_IN_method_721 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_724 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_parameters_IN_method_726 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_732 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_method_734 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_method_738 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_method_742 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_method_747 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_760 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_constructor_762 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_765 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_constructor_768 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_770 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_constructor_776 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_constructor_778 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_constructor_782 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_constructor_786 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_791 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_804 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_806 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_program_808 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_program_812 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_program_816 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_program_821 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_variables_834 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_variables_836 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_variables_840 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_variables_842 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_variables_847 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_860 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_862 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_866 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_attributes_868 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_873 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_886 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_888 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_929 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_933 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_948 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_952 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_966 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_block_968 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_block_971 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_984 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_set_IN_super_expression_987 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_995 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_exp_IN_expression_1010 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_set_IN_expression_1013 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_expression_1037 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1052 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_set_IN_exp_1055 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_term_IN_exp_1063 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_factor_IN_term_1078 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_set_IN_term_1082 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_1096 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1113 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1115 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_factor_1117 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1121 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1125 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_1129 = Set[ 1 ]
    TOKENS_FOLLOWING_id_IN_var_cte_1144 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_1148 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1152 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1156 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1160 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_id_1174 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_1188 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1190 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_1194 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_1198 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_1202 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_1206 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_1210 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_1214 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1216 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_1220 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1222 = Set[ 1 ]
    TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1238 = Set[ 1 ]
    TOKENS_FOLLOWING_return_IN_estatutes_f_1242 = Set[ 1 ]
    TOKENS_FOLLOWING_id_IN_assign_1256 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_1258 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_1260 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1273 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_1275 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1277 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_condition_1279 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1281 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1284 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1286 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1301 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_1303 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1305 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_1307 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1309 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1322 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_1324 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1326 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1329 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_1331 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1333 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1335 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_1338 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1340 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_1353 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_1355 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1358 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_print_1362 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1364 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_print_1370 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_1372 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_1385 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_1387 = Set[ 24 ]
    TOKENS_FOLLOWING_id_IN_input_1389 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_input_1391 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_1393 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1406 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_1408 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1411 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_1414 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1416 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_func_call_1422 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1435 = Set[ 41 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_1437 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_1439 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1442 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_1445 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1447 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_call_1453 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_1465 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_return_1467 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_return_1469 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
