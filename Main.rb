require_relative 'FomaLexer'
require_relative 'FomaParser'

file_name = ARGV[0]

input = ANTLR3::FileStream.new(file_name)
$lexer = Foma::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

parser = open(file_name) { | f | Foma::Parser.new( f ) }
parser.commence
