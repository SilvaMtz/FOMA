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
    @variables.key?(id)
  end

  def display()

    puts "ID \tTYPE\tMEMORY"
    @variables.each do |key, variable|
      puts("#{variable.id}\t#{variable.type}\t#{variable.memory}")
    end
    puts ""
  end

end
