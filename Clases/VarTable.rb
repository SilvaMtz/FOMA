require_relative 'Vars'

class VarTable

  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def var_add(id, type)
    @variables[id] = Vars.new(id, type)
  end

  def var_exists? (id)
    @variables.key(id)?
  end

  def var_get(id)
    @variables[id]
  end

  # def print()
  #   puts "\tVar Table:"
  #   @variables.each do |key, variable|
  #     puts "\t*********************"
  #     puts("\t|ID: #{variable.id}, Type: #{variable.type})
  #   end
  #   puts "\t******************** \n"
  # end

end
