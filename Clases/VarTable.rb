require_relative 'Vars'

class VarTable

  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def add_var(id, type)
    @variables[id] = Vars.new(id, type)
  end

  def exists (id)
    @variables.key?(id)
  end

  def get_var(id)
    @variables.key?(id)
  end

  def display()

    puts "ID \tTYPE"
    @variables.each do |key, variable|
      puts("#{variable.id}\t#{variable.type}")
    end
    puts ""
  end

end
