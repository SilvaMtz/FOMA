require_relative 'Function'

class FunctionTable

  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  def add_func(id, type, params, cuadInicial, dirVars)
    @functions[id] = Function.new(id, type, params, cuadInicial, dirVars)
  end

  def exists (id)
    @functions.key?(id)
  end

  def get_function(id)
    @functions[id]
  end

  def display()

    @functions.each do |key, funcElements|
      puts "ID = #{key} TYPE = #{funcElements.type} PARAMS = #{funcElements.params} CUAD Inicial = #{funcElements.cuadInicial}"
      puts "VARS: "
      funcElements.dirVars.display
    end
    puts ""
  end


end
