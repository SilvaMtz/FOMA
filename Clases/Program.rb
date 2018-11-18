require_relative 'ClassTable'
require_relative 'Memory'

class Program

  attr_accessor :dirFunc, :dirVars, :dirAttrs, :dirClass, :memory

  def initialize()
    @dirFunc = FunctionTable.new()
    @dirVars = VarTable.new()
    @dirAttrs = VarTable.new()
    @dirClass = ClassTable.new()
    @memory = Memory.new()
  end

  def add_attrs ()
    @dirAttrs = @dirVars
    @dirVars = VarTable.new()
  end

  def add_var(id, type, scope)

    if @dirVars.exists(id)
      puts "ERROR: Existen declaraciones multiples de la Variable #{id}"
    else
      if @dirFunc.exists(id)
        puts "ERROR: Existen declaraciones hibirdas para #{id}"
      else

        @dirVars.add_var(id, type, @memory.get_mem(type, scope))
      end
    end
  end

  def add_dim(id, type, dim1, dim2)

    for i in 0...dim1.to_i do
      idRes = id + "[#{i}]"
      for j in 0 ... dim2.to_i do
        idRes =  id + "[#{i}][#{j}]"
        add_var(idRes, type, "global")
      end
      if dim2 == 0
        add_var(idRes, type, "global")

      end
    end

    # @dirVars.add_var(id, type)
  end

  def add_func(id, type, params)
    @dirFunc.add_func(id, type, params, @dirVars)
    @dirVars = VarTable.new()
    @memory.reset
  end

  def add_class (id)

    if @dirClass.exists(id)
      puts "ERROR: Existen declaraciones multiples de la clase #{id}"
    else
      @dirClass.add_class(id, @dirAttrs, @dirFunc)
    end

    @dirAttrs = VarTable.new()
    @dirFunc = FunctionTable.new()


  end

  def display()
    puts "IN 2"
    @dirClass.display
    @dirFunc.display
  end

end
