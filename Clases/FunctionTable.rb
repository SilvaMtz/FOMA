require_relative 'Function'

class FunctionTable

  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  def function_add(id, type, size)
    @functions[id] = Function.new(header, type, size)
  end

end
