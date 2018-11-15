
require_relative 'VarTable'

class Function

  attr_accessor :id, :type, :size, :dirVars

  def initialize (id, type, size, dirVars)
    @id = id
    @type = type
    @size = size
    @dirVars = dirVars
  end

end
