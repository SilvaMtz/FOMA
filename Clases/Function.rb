
require_relative 'VarTable'

class Function

  attr_accessor :id, :type,:params, :size, :dirVars

  def initialize (id, type, params, dirVars)
    @id = id
    @type = type
    @params = params
    @dirVars = dirVars
  end

end
