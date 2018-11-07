class Function

  attr_accessor :id, :type, :size, :var_pointer

  def initialize (id, type, size, var_pointer)
    @id = id
    @type = type
    @size = size
    @var_pointer = var_pointer
  end

end
