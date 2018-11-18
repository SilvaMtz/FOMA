
require_relative 'FunctionTable'

class ClassElements

  attr_accessor :id , :dirAttrs, :dirFunc

  def initialize (id, dirAttrs, dirFunc)

    @id = id
    @dirAttrs = dirAttrs
    @dirFunc = dirFunc

  end

end
