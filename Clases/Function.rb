
require_relative 'VarTable'

class Function

  attr_accessor :id, :type,:params, :size, :cuadInicial, :dirVars

  def initialize (id, type, params, cuadInicial, dirVars)
    @id = id
    @type = type
    @params = params
    @cuadInicial = cuadInicial
    @dirVars = dirVars
  end

end
