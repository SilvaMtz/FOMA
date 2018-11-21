class Vars

  attr_accessor :id, :type, :memory, :size, :dim1, :dim2

  def initialize (id, type, memory, size, dim1, dim2)
    @id = id
    @type = type
    @memory = memory
    @size = size
    @dim1 = dim1
    @dim2= dim2
  end

end
