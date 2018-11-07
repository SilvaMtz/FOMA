require_relative 'VarTable'
require_relative 'FunctionTable'

class Program

  attr_accessor :current_function, :dir_func, :dir_var



  def initialize()
    current_function = 'GLOBAL'
    @dir_func = FunctionTable.new()
    @dir_var = VarTable.new()
  end

  def add_var(id, type)
    @dir_var.add_var(id, type)
  end

  def add_function(type)
    @dir_func.add_func(current_function, type, @dir_var.length, @dir_var)
    @dir_var = VarTable.new()
  end
end
