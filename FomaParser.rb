#!/usr/bin/env ruby
#
# Foma.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Foma.g
# Generated at: 2018-11-15 10:17:36
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

      $program = Program.new()
      $idTemp


    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule commence
    #
    # (in Foma.g)
    # 136:1: commence : ( r_class )* ( variables )* ( function )* program ;
    #
    def commence
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 137:5: ( r_class )* ( variables )* ( function )* program
      # at line 137:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 137:7: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_commence_584 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 137:18: ( variables )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( BOOL, CHAR ) || look_2_0 == FLOAT || look_2_0 == ID || look_2_0 == INTEGER )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 137:19: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_commence_590 )
          variables
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      # at line 137:31: ( function )*
      while true # decision 3
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 137:32: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_commence_595 )
          function
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      @state.following.push( TOKENS_FOLLOWING_program_IN_commence_599 )
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
    # 141:1: r_class : CLASS ID ( INHER ID )? START ( attributes )* ( constructor )+ ( method )* R_END ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 142:5: CLASS ID ( INHER ID )? START ( attributes )* ( constructor )+ ( method )* R_END
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_r_class_620 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_622 )
      # at line 142:14: ( INHER ID )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == INHER )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 142:16: INHER ID
        match( INHER, TOKENS_FOLLOWING_INHER_IN_r_class_626 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_628 )

      end
      match( START, TOKENS_FOLLOWING_START_IN_r_class_633 )
      # at line 142:35: ( attributes )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( BOOL, CHAR ) || look_5_0 == FLOAT || look_5_0 == INTEGER )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 142:37: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_r_class_638 )
          attributes
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      # at file 142:52: ( constructor )+
      match_count_6 = 0
      while true
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == ID )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 142:54: constructor
          @state.following.push( TOKENS_FOLLOWING_constructor_IN_r_class_646 )
          constructor
          @state.following.pop

        else
          match_count_6 > 0 and break
          eee = EarlyExit(6)


          raise eee
        end
        match_count_6 += 1
      end


      # at line 142:70: ( method )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( BOOL, CHAR ) || look_7_0 == FLOAT || look_7_0 == INTEGER || look_7_0 == VOID )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 142:72: method
          @state.following.push( TOKENS_FOLLOWING_method_IN_r_class_654 )
          method
          @state.following.pop

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_659 )

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
    # 145:1: function : FUNCTION type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 146:5: FUNCTION type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_672 )
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_function_674 )
      type_f
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_function_676 )
      match( LP, TOKENS_FOLLOWING_LP_IN_function_678 )
      # at line 146:27: ( parameters ( COMMA parameters )* )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0.between?( BOOL, CHAR ) || look_9_0 == FLOAT || look_9_0 == INTEGER )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 146:28: parameters ( COMMA parameters )*
        @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_681 )
        parameters
        @state.following.pop
        # at line 146:39: ( COMMA parameters )*
        while true # decision 8
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == COMMA )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 146:40: COMMA parameters
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_function_684 )
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_686 )
            parameters
            @state.following.pop

          else
            break # out of loop for decision 8
          end
        end # loop for decision 8


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_function_692 )
      match( START, TOKENS_FOLLOWING_START_IN_function_694 )
      # at line 146:70: ( variables | estatutes_f )*
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
          # at line 146:72: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_function_698 )
          variables
          @state.following.pop

        when 2
          # at line 146:84: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_function_702 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_707 )

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
    # 149:1: method : type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END ;
    #
    def method
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 150:5: type_f ID LP ( parameters ( COMMA parameters )* )? RP START ( variables | estatutes_f )* R_END
      @state.following.push( TOKENS_FOLLOWING_type_f_IN_method_720 )
      type_f
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_method_722 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_724 )
      # at line 150:18: ( parameters ( COMMA parameters )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0.between?( BOOL, CHAR ) || look_12_0 == FLOAT || look_12_0 == INTEGER )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 150:19: parameters ( COMMA parameters )*
        @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_727 )
        parameters
        @state.following.pop
        # at line 150:30: ( COMMA parameters )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 150:31: COMMA parameters
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_730 )
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_method_732 )
            parameters
            @state.following.pop

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_738 )
      match( START, TOKENS_FOLLOWING_START_IN_method_740 )
      # at line 150:61: ( variables | estatutes_f )*
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
          # at line 150:63: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_method_744 )
          variables
          @state.following.pop

        when 2
          # at line 150:75: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_method_748 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13

      match( R_END, TOKENS_FOLLOWING_R_END_IN_method_754 )

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
    # 153:1: constructor : ID LP ( parameters ( COMMA parameters )* )? RP START ( attributes | estatutes_f )* R_END ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 154:6: ID LP ( parameters ( COMMA parameters )* )? RP START ( attributes | estatutes_f )* R_END
      match( ID, TOKENS_FOLLOWING_ID_IN_constructor_768 )
      match( LP, TOKENS_FOLLOWING_LP_IN_constructor_770 )
      # at line 154:13: ( parameters ( COMMA parameters )* )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0.between?( BOOL, CHAR ) || look_15_0 == FLOAT || look_15_0 == INTEGER )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 154:14: parameters ( COMMA parameters )*
        @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_774 )
        parameters
        @state.following.pop
        # at line 154:25: ( COMMA parameters )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == COMMA )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 154:26: COMMA parameters
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_constructor_777 )
            @state.following.push( TOKENS_FOLLOWING_parameters_IN_constructor_779 )
            parameters
            @state.following.pop

          else
            break # out of loop for decision 14
          end
        end # loop for decision 14


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_constructor_785 )
      match( START, TOKENS_FOLLOWING_START_IN_constructor_788 )
      # at line 154:57: ( attributes | estatutes_f )*
      while true # decision 16
        alt_16 = 3
        look_16_0 = @input.peek( 1 )

        if ( look_16_0.between?( BOOL, CHAR ) || look_16_0 == FLOAT || look_16_0 == INTEGER )
          alt_16 = 1
        elsif ( look_16_0 == FOR || look_16_0.between?( ID, IF ) || look_16_0 == INPUT || look_16_0 == PRINT || look_16_0 == RETURN || look_16_0 == WHILE )
          alt_16 = 2

        end
        case alt_16
        when 1
          # at line 154:59: attributes
          @state.following.push( TOKENS_FOLLOWING_attributes_IN_constructor_792 )
          attributes
          @state.following.pop

        when 2
          # at line 154:72: estatutes_f
          @state.following.push( TOKENS_FOLLOWING_estatutes_f_IN_constructor_796 )
          estatutes_f
          @state.following.pop

        else
          break # out of loop for decision 16
        end
      end # loop for decision 16

      match( R_END, TOKENS_FOLLOWING_R_END_IN_constructor_802 )

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
    # 157:1: program : PROGRAM ID START ( variables | estatutes )* R_END ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 158:5: PROGRAM ID START ( variables | estatutes )* R_END
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_815 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_817 )
      match( START, TOKENS_FOLLOWING_START_IN_program_819 )
      # at line 158:22: ( variables | estatutes )*
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
          # at line 158:24: variables
          @state.following.push( TOKENS_FOLLOWING_variables_IN_program_823 )
          variables
          @state.following.pop

        when 2
          # at line 158:36: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_program_827 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_832 )

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
    # 161:1: variables : type_c id ( COMMA id )* SEMICOLON ;
    #
    def variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      type_c1 = nil


      begin
      # at line 162:5: type_c id ( COMMA id )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_c_IN_variables_845 )
      type_c1 = type_c
      @state.following.pop
      @state.following.push( TOKENS_FOLLOWING_id_IN_variables_847 )
      id
      @state.following.pop

      # --> action
      puts "#{( type_c1 && @input.to_s( type_c1.start, type_c1.stop ) )}, #{$idTemp}"
      # <-- action

      # at line 162:53: ( COMMA id )*
      while true # decision 18
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == COMMA )
          alt_18 = 1

        end
        case alt_18
        when 1
          # at line 162:55: COMMA id
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_variables_853 )
          @state.following.push( TOKENS_FOLLOWING_id_IN_variables_855 )
          id
          @state.following.pop

          # --> action
          puts "#{( type_c1 && @input.to_s( type_c1.start, type_c1.stop ) )}, #{$idTemp}"
          # <-- action


        else
          break # out of loop for decision 18
        end
      end # loop for decision 18

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_variables_863 )

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
    # 165:1: attributes : type_s id ( COMMA id )* SEMICOLON ;
    #
    def attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      type_s2 = nil


      begin
      # at line 166:5: type_s id ( COMMA id )* SEMICOLON
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_attributes_876 )
      type_s2 = type_s
      @state.following.pop
      @state.following.push( TOKENS_FOLLOWING_id_IN_attributes_878 )
      id
      @state.following.pop

      # --> action
      puts "#{( type_s2 && @input.to_s( type_s2.start, type_s2.stop ) )}, #{$idTemp}"
      # <-- action

      # at line 166:52: ( COMMA id )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == COMMA )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 166:54: COMMA id
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_attributes_883 )
          @state.following.push( TOKENS_FOLLOWING_id_IN_attributes_885 )
          id
          @state.following.pop

          # --> action
          puts "#{( type_s2 && @input.to_s( type_s2.start, type_s2.stop ) )}, #{$idTemp}"
          # <-- action


        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_attributes_892 )

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
    # 169:1: parameters : type_s ID ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID4__ = nil
      type_s3 = nil


      begin
      # at line 170:5: type_s ID
      @state.following.push( TOKENS_FOLLOWING_type_s_IN_parameters_905 )
      type_s3 = type_s
      @state.following.pop
      __ID4__ = match( ID, TOKENS_FOLLOWING_ID_IN_parameters_907 )

      # --> action
      puts "#{( type_s3 && @input.to_s( type_s3.start, type_s3.stop ) )}, #{__ID4__.text}"
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return 
    end

    TypeSReturnValue = define_return_scope

    #
    # parser rule type_s
    #
    # (in Foma.g)
    # 173:1: type_s : ( INTEGER | FLOAT | CHAR | BOOL ) ;
    #
    def type_s
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


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
        # trace_out( __method__, 10 )


      end

      return return_value
    end

    TypeCReturnValue = define_return_scope

    #
    # parser rule type_c
    #
    # (in Foma.g)
    # 177:1: type_c : ( type_s | ID ) ;
    #
    def type_c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      return_value = TypeCReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 178:5: ( type_s | ID )
      # at line 178:5: ( type_s | ID )
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
        # at line 178:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_c_950 )
        type_s
        @state.following.pop

      when 2
        # at line 178:15: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_type_c_954 )

      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )


      end

      return return_value
    end



    #
    # parser rule type_f
    #
    # (in Foma.g)
    # 181:1: type_f : ( type_s | VOID ) ;
    #
    def type_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 182:5: ( type_s | VOID )
      # at line 182:5: ( type_s | VOID )
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
        # at line 182:6: type_s
        @state.following.push( TOKENS_FOLLOWING_type_s_IN_type_f_969 )
        type_s
        @state.following.pop

      when 2
        # at line 182:15: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_type_f_973 )

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
    # 185:1: block : START ( estatutes )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 186:5: START ( estatutes )* R_END
      match( START, TOKENS_FOLLOWING_START_IN_block_987 )
      # at line 186:11: ( estatutes )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == FOR || look_22_0.between?( ID, IF ) || look_22_0 == INPUT || look_22_0 == PRINT || look_22_0 == WHILE )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 186:11: estatutes
          @state.following.push( TOKENS_FOLLOWING_estatutes_IN_block_989 )
          estatutes
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_992 )

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
    # 189:1: super_expression : expression ( ( AND | OR ) expression )* ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 190:5: expression ( ( AND | OR ) expression )*
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1005 )
      expression
      @state.following.pop
      # at line 190:16: ( ( AND | OR ) expression )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == AND || look_23_0 == OR )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 190:17: ( AND | OR ) expression
          if @input.peek(1) == AND || @input.peek(1) == OR
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1016 )
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
    # 193:1: expression : exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )* ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 194:5: exp ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1031 )
      exp
      @state.following.pop
      # at line 194:9: ( ( LT | LEQ | GT | GEQ | EQ | NE ) exp )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == EQ || look_24_0.between?( GEQ, GT ) || look_24_0 == LEQ || look_24_0 == LT || look_24_0 == NE )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 194:10: ( LT | LEQ | GT | GEQ | EQ | NE ) exp
          if @input.peek(1) == EQ || @input.peek( 1 ).between?( GEQ, GT ) || @input.peek(1) == LEQ || @input.peek(1) == LT || @input.peek(1) == NE
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1058 )
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
    # 197:1: exp : term ( ( ADD | SUB ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 198:5: term ( ( ADD | SUB ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1073 )
      term
      @state.following.pop
      # at line 198:10: ( ( ADD | SUB ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == ADD || look_25_0 == SUB )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 198:11: ( ADD | SUB ) term
          if @input.peek(1) == ADD || @input.peek(1) == SUB
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1084 )
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
    # 201:1: term : factor ( ( MULT | DIV | MOD ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 202:5: factor ( ( MULT | DIV | MOD ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1099 )
      factor
      @state.following.pop
      # at line 202:12: ( ( MULT | DIV | MOD ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0.between?( MOD, MULT ) )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 202:14: ( MULT | DIV | MOD ) factor
          if @input.peek(1) == DIV || @input.peek( 1 ).between?( MOD, MULT )
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1117 )
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
    # 205:1: factor : ( LP super_expression RP | var_cte | func_call | method_call ) ;
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 206:5: ( LP super_expression RP | var_cte | func_call | method_call )
      # at line 206:5: ( LP super_expression RP | var_cte | func_call | method_call )
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
        # at line 206:6: LP super_expression RP
        match( LP, TOKENS_FOLLOWING_LP_IN_factor_1134 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_1136 )
        super_expression
        @state.following.pop
        match( RP, TOKENS_FOLLOWING_RP_IN_factor_1138 )

      when 2
        # at line 206:31: var_cte
        @state.following.push( TOKENS_FOLLOWING_var_cte_IN_factor_1142 )
        var_cte
        @state.following.pop

      when 3
        # at line 206:41: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_1146 )
        func_call
        @state.following.pop

      when 4
        # at line 206:53: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_1150 )
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
    # 209:1: var_cte : ( id | C_INT | C_FLOAT | C_CHAR | C_BOOL ) ;
    #
    def var_cte
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 210:5: ( id | C_INT | C_FLOAT | C_CHAR | C_BOOL )
      # at line 210:5: ( id | C_INT | C_FLOAT | C_CHAR | C_BOOL )
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
        # at line 210:6: id
        @state.following.push( TOKENS_FOLLOWING_id_IN_var_cte_1165 )
        id
        @state.following.pop

      when 2
        # at line 210:11: C_INT
        match( C_INT, TOKENS_FOLLOWING_C_INT_IN_var_cte_1169 )

      when 3
        # at line 210:19: C_FLOAT
        match( C_FLOAT, TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1173 )

      when 4
        # at line 210:29: C_CHAR
        match( C_CHAR, TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1177 )

      when 5
        # at line 210:38: C_BOOL
        match( C_BOOL, TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1181 )

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
    # 213:1: id : ID ;
    #
    def id
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      __ID5__ = nil


      begin
      # at line 214:5: ID
      __ID5__ = match( ID, TOKENS_FOLLOWING_ID_IN_id_1195 )

      # --> action
      $idTemp = __ID5__.text
      # <-- action


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
    # 217:1: estatutes : ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON ) ;
    #
    def estatutes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 218:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
      # at line 218:5: ( assign SEMICOLON | condition | while_loop | for_loop | print | input | func_call SEMICOLON | method_call SEMICOLON )
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
        # at line 218:6: assign SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_assign_IN_estatutes_1211 )
        assign
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1213 )

      when 2
        # at line 218:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatutes_1217 )
        condition
        @state.following.pop

      when 3
        # at line 218:37: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatutes_1221 )
        while_loop
        @state.following.pop

      when 4
        # at line 218:50: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_estatutes_1225 )
        for_loop
        @state.following.pop

      when 5
        # at line 218:61: print
        @state.following.push( TOKENS_FOLLOWING_print_IN_estatutes_1229 )
        print
        @state.following.pop

      when 6
        # at line 218:69: input
        @state.following.push( TOKENS_FOLLOWING_input_IN_estatutes_1233 )
        input
        @state.following.pop

      when 7
        # at line 218:77: func_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatutes_1237 )
        func_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1239 )

      when 8
        # at line 218:99: method_call SEMICOLON
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatutes_1243 )
        method_call
        @state.following.pop
        match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1245 )

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
    # 221:1: estatutes_f : ( estatutes | return ) ;
    #
    def estatutes_f
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 222:5: ( estatutes | return )
      # at line 222:5: ( estatutes | return )
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
        # at line 222:6: estatutes
        @state.following.push( TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1261 )
        estatutes
        @state.following.pop

      when 2
        # at line 222:18: return
        @state.following.push( TOKENS_FOLLOWING_return_IN_estatutes_f_1265 )
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
    # 225:1: assign : id ASSIGN super_expression ;
    #
    def assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 226:5: id ASSIGN super_expression
      @state.following.push( TOKENS_FOLLOWING_id_IN_assign_1279 )
      id
      @state.following.pop
      match( ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_1281 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assign_1283 )
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
    # 229:1: condition : IF LP super_expression RP block ( ELSE block )? ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 230:5: IF LP super_expression RP block ( ELSE block )?
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1296 )
      match( LP, TOKENS_FOLLOWING_LP_IN_condition_1298 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1300 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_condition_1302 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1304 )
      block
      @state.following.pop
      # at line 230:37: ( ELSE block )?
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0 == ELSE )
        alt_31 = 1
      end
      case alt_31
      when 1
        # at line 230:38: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1307 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1309 )
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
    # 233:1: while_loop : WHILE LP super_expression RP block ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      begin
      # at line 234:5: WHILE LP super_expression RP block
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1324 )
      match( LP, TOKENS_FOLLOWING_LP_IN_while_loop_1326 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1328 )
      super_expression
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_while_loop_1330 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1332 )
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
    # 237:1: for_loop : FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      begin
      # at line 238:5: FOR LP ( assign )? SEMICOLON super_expression SEMICOLON ( assign )? RP block
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1345 )
      match( LP, TOKENS_FOLLOWING_LP_IN_for_loop_1347 )
      # at line 238:12: ( assign )?
      alt_32 = 2
      look_32_0 = @input.peek( 1 )

      if ( look_32_0 == ID )
        alt_32 = 1
      end
      case alt_32
      when 1
        # at line 238:12: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1349 )
        assign
        @state.following.pop

      end
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1352 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_for_loop_1354 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1356 )
      # at line 238:57: ( assign )?
      alt_33 = 2
      look_33_0 = @input.peek( 1 )

      if ( look_33_0 == ID )
        alt_33 = 1
      end
      case alt_33
      when 1
        # at line 238:57: assign
        @state.following.push( TOKENS_FOLLOWING_assign_IN_for_loop_1358 )
        assign
        @state.following.pop

      end
      match( RP, TOKENS_FOLLOWING_RP_IN_for_loop_1361 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1363 )
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
    # 241:1: print : PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON ;
    #
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      begin
      # at line 242:5: PRINT LP ( super_expression ( COMMA super_expression )* ) RP SEMICOLON
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_print_1376 )
      match( LP, TOKENS_FOLLOWING_LP_IN_print_1378 )
      # at line 242:14: ( super_expression ( COMMA super_expression )* )
      # at line 242:15: super_expression ( COMMA super_expression )*
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1381 )
      super_expression
      @state.following.pop
      # at line 242:32: ( COMMA super_expression )*
      while true # decision 34
        alt_34 = 2
        look_34_0 = @input.peek( 1 )

        if ( look_34_0 == COMMA )
          alt_34 = 1

        end
        case alt_34
        when 1
          # at line 242:34: COMMA super_expression
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_print_1385 )
          @state.following.push( TOKENS_FOLLOWING_super_expression_IN_print_1387 )
          super_expression
          @state.following.pop

        else
          break # out of loop for decision 34
        end
      end # loop for decision 34


      match( RP, TOKENS_FOLLOWING_RP_IN_print_1393 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_print_1395 )

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
    # 245:1: input : INPUT LP id RP SEMICOLON ;
    #
    def input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      begin
      # at line 246:5: INPUT LP id RP SEMICOLON
      match( INPUT, TOKENS_FOLLOWING_INPUT_IN_input_1408 )
      match( LP, TOKENS_FOLLOWING_LP_IN_input_1410 )
      @state.following.push( TOKENS_FOLLOWING_id_IN_input_1412 )
      id
      @state.following.pop
      match( RP, TOKENS_FOLLOWING_RP_IN_input_1414 )
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_input_1416 )

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
    # 249:1: func_call : ID LP ( ID ( COMMA ID )* )? RP ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 250:5: ID LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1429 )
      match( LP, TOKENS_FOLLOWING_LP_IN_func_call_1431 )
      # at line 250:11: ( ID ( COMMA ID )* )?
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == ID )
        alt_36 = 1
      end
      case alt_36
      when 1
        # at line 250:12: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1434 )
        # at line 250:15: ( COMMA ID )*
        while true # decision 35
          alt_35 = 2
          look_35_0 = @input.peek( 1 )

          if ( look_35_0 == COMMA )
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 250:16: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_1437 )
            match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1439 )

          else
            break # out of loop for decision 35
          end
        end # loop for decision 35


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_func_call_1445 )

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
    # 253:1: method_call : ID POINT LP ( ID ( COMMA ID )* )? RP ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      begin
      # at line 254:5: ID POINT LP ( ID ( COMMA ID )* )? RP
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1458 )
      match( POINT, TOKENS_FOLLOWING_POINT_IN_method_call_1460 )
      match( LP, TOKENS_FOLLOWING_LP_IN_method_call_1462 )
      # at line 254:17: ( ID ( COMMA ID )* )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == ID )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 254:18: ID ( COMMA ID )*
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1465 )
        # at line 254:21: ( COMMA ID )*
        while true # decision 37
          alt_37 = 2
          look_37_0 = @input.peek( 1 )

          if ( look_37_0 == COMMA )
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 254:22: COMMA ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_1468 )
            match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1470 )

          else
            break # out of loop for decision 37
          end
        end # loop for decision 37


      end
      match( RP, TOKENS_FOLLOWING_RP_IN_method_call_1476 )

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
    # 257:1: return : RETURN super_expression SEMICOLON ;
    #
    def return
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      begin
      # at line 258:4: RETURN super_expression SEMICOLON
      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_return_1488 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_return_1490 )
      super_expression
      @state.following.pop
      match( SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_return_1492 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_commence_584 = Set[ 7, 8, 9, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_variables_IN_commence_590 = Set[ 7, 8, 19, 21, 24, 28, 43 ]
    TOKENS_FOLLOWING_function_IN_commence_595 = Set[ 21, 43 ]
    TOKENS_FOLLOWING_program_IN_commence_599 = Set[ 1 ]
    TOKENS_FOLLOWING_CLASS_IN_r_class_620 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_622 = Set[ 26, 50 ]
    TOKENS_FOLLOWING_INHER_IN_r_class_626 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_r_class_628 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_r_class_633 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_attributes_IN_r_class_638 = Set[ 7, 8, 19, 24, 28 ]
    TOKENS_FOLLOWING_constructor_IN_r_class_646 = Set[ 7, 8, 19, 24, 28, 48, 52 ]
    TOKENS_FOLLOWING_method_IN_r_class_654 = Set[ 7, 8, 19, 28, 48, 52 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_659 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_672 = Set[ 7, 8, 19, 28, 52 ]
    TOKENS_FOLLOWING_type_f_IN_function_674 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_function_676 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_function_678 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_parameters_IN_function_681 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_function_684 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_parameters_IN_function_686 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_function_692 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_function_694 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_function_698 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_function_702 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_function_707 = Set[ 1 ]
    TOKENS_FOLLOWING_type_f_IN_method_720 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_722 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_724 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_parameters_IN_method_727 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_730 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_parameters_IN_method_732 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_738 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_method_740 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_method_744 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_method_748 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_method_754 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_constructor_768 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_constructor_770 = Set[ 7, 8, 19, 28, 47 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_774 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_constructor_777 = Set[ 7, 8, 19, 28 ]
    TOKENS_FOLLOWING_parameters_IN_constructor_779 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_constructor_785 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_constructor_788 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_attributes_IN_constructor_792 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_f_IN_constructor_796 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 46, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_constructor_802 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_815 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_program_817 = Set[ 50 ]
    TOKENS_FOLLOWING_START_IN_program_819 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_variables_IN_program_823 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_program_827 = Set[ 7, 8, 19, 20, 24, 25, 27, 28, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_program_832 = Set[ 1 ]
    TOKENS_FOLLOWING_type_c_IN_variables_845 = Set[ 24 ]
    TOKENS_FOLLOWING_id_IN_variables_847 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_variables_853 = Set[ 24 ]
    TOKENS_FOLLOWING_id_IN_variables_855 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_variables_863 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_attributes_876 = Set[ 24 ]
    TOKENS_FOLLOWING_id_IN_attributes_878 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_COMMA_IN_attributes_883 = Set[ 24 ]
    TOKENS_FOLLOWING_id_IN_attributes_885 = Set[ 11, 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_attributes_892 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_parameters_905 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_parameters_907 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_c_950 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_type_c_954 = Set[ 1 ]
    TOKENS_FOLLOWING_type_s_IN_type_f_969 = Set[ 1 ]
    TOKENS_FOLLOWING_VOID_IN_type_f_973 = Set[ 1 ]
    TOKENS_FOLLOWING_START_IN_block_987 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_estatutes_IN_block_989 = Set[ 20, 24, 25, 27, 42, 48, 53 ]
    TOKENS_FOLLOWING_R_END_IN_block_992 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1005 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_set_IN_super_expression_1008 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1016 = Set[ 1, 5, 40 ]
    TOKENS_FOLLOWING_exp_IN_expression_1031 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_set_IN_expression_1034 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_exp_IN_expression_1058 = Set[ 1, 18, 22, 23, 31, 33, 36 ]
    TOKENS_FOLLOWING_term_IN_exp_1073 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_set_IN_exp_1076 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_term_IN_exp_1084 = Set[ 1, 4, 51 ]
    TOKENS_FOLLOWING_factor_IN_term_1099 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_set_IN_term_1103 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_1117 = Set[ 1, 16, 34, 35 ]
    TOKENS_FOLLOWING_LP_IN_factor_1134 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_1136 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_factor_1138 = Set[ 1 ]
    TOKENS_FOLLOWING_var_cte_IN_factor_1142 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_1146 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_1150 = Set[ 1 ]
    TOKENS_FOLLOWING_id_IN_var_cte_1165 = Set[ 1 ]
    TOKENS_FOLLOWING_C_INT_IN_var_cte_1169 = Set[ 1 ]
    TOKENS_FOLLOWING_C_FLOAT_IN_var_cte_1173 = Set[ 1 ]
    TOKENS_FOLLOWING_C_CHAR_IN_var_cte_1177 = Set[ 1 ]
    TOKENS_FOLLOWING_C_BOOL_IN_var_cte_1181 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_id_1195 = Set[ 1 ]
    TOKENS_FOLLOWING_assign_IN_estatutes_1211 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1213 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatutes_1217 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatutes_1221 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_estatutes_1225 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_estatutes_1229 = Set[ 1 ]
    TOKENS_FOLLOWING_input_IN_estatutes_1233 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatutes_1237 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1239 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatutes_1243 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_estatutes_1245 = Set[ 1 ]
    TOKENS_FOLLOWING_estatutes_IN_estatutes_f_1261 = Set[ 1 ]
    TOKENS_FOLLOWING_return_IN_estatutes_f_1265 = Set[ 1 ]
    TOKENS_FOLLOWING_id_IN_assign_1279 = Set[ 6 ]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_1281 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_assign_1283 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1296 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_condition_1298 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1300 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_condition_1302 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1304 = Set[ 1, 17 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1307 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_condition_1309 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1324 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_while_loop_1326 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1328 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_while_loop_1330 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1332 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1345 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_for_loop_1347 = Set[ 24, 49 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1349 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1352 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_for_loop_1354 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_for_loop_1356 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_assign_IN_for_loop_1358 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_for_loop_1361 = Set[ 50 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1363 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_print_1376 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_print_1378 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1381 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_print_1385 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_print_1387 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_print_1393 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_print_1395 = Set[ 1 ]
    TOKENS_FOLLOWING_INPUT_IN_input_1408 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_input_1410 = Set[ 24 ]
    TOKENS_FOLLOWING_id_IN_input_1412 = Set[ 47 ]
    TOKENS_FOLLOWING_RP_IN_input_1414 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_input_1416 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1429 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_func_call_1431 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1434 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_1437 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1439 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_func_call_1445 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1458 = Set[ 41 ]
    TOKENS_FOLLOWING_POINT_IN_method_call_1460 = Set[ 32 ]
    TOKENS_FOLLOWING_LP_IN_method_call_1462 = Set[ 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1465 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_1468 = Set[ 24 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1470 = Set[ 11, 47 ]
    TOKENS_FOLLOWING_RP_IN_method_call_1476 = Set[ 1 ]
    TOKENS_FOLLOWING_RETURN_IN_return_1488 = Set[ 12, 13, 14, 15, 24, 32 ]
    TOKENS_FOLLOWING_super_expression_IN_return_1490 = Set[ 49 ]
    TOKENS_FOLLOWING_SEMICOLON_IN_return_1492 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
