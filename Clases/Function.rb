
require_relative 'VarTable'

class Function

  attr_accessor :id, :type,:params, :size, :cuadInicial, :dirVars, :paramsMemory

  def initialize (id, type, params, paramsMemory, cuadInicial, dirVars)
    @id = id
    @type = type
    @params = params
    @paramsMemory = paramsMemory
    @cuadInicial = cuadInicial
    @dirVars = dirVars
  end

end
