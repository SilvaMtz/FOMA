require_relative 'Function'

class FunctionTable

  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  def function_add(id, type, size, var_pointer)
    @functions[id] = Function.new(id, type, size, var_pointer)
  end

  def function_exists? (id)
    @functions.key?(id)
  end

  def function_get(id)
    @functions[id]
  end


end
