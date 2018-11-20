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

    case type
    when "int", "float", "char", "bool"
      if @dirVars.exists(id)
        puts "ERROR: Existen declaraciones multiples de la Variable #{id}"
      else
        if @dirFunc.exists(id)
          puts "ERROR: Existen declaraciones hibirdas para #{id}"
        else

          @dirVars.add_var(id, type, @memory.get_mem(type, scope))
        end
      end
    else
      @dirVars.add_var("#{id}", type, "N/A")
      @dirClass.classes[type].dirAttrs.variables.each do |key, elem|
        @dirVars.add_var("#{id}.#{key}", type, @memory.get_mem(elem.type, scope))
      end
    end

    def testFunc(id)
      puts @dirFunc.functions["global"].dirVars.variables[id].type
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

  def add_func(id, type, params, cuadInicial)
    @dirFunc.add_func(id, type, params, cuadInicial, @dirVars)
    @dirVars = VarTable.new()
    @memory.reset
  end

  def add_class (id)

    if @dirClass.exists(id)
      puts "ERROR: Existen declaraciones multiples de la clase #{id}"
    else
      @dirClass.add_class(id, @dirAttrs)
    end

    @dirAttrs = VarTable.new()



  end


  def display()
    puts ""
    puts "\tCLASS TABLE:"
    @dirClass.display

    puts ""
    puts "\tFUNTION TABLE:"
    @dirFunc.display
  end

end
