require_relative 'Vars'

class VarTable

  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def add_var(id, type, memory)
    @variables[id] = Vars.new(id, type, memory)
  end

  def exists (id)
    @variables.key?(id)
  end

  def get_var(id)
    @variables.key(id)
  end

  def display()


    @variables.each do |key, variable|
      puts("\t#{variable.type}\t#{variable.id}\t#{variable.memory}")
    end
    puts ""
  end

end
