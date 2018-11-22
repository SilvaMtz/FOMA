require_relative 'ClassTable'
require_relative 'Memory'

class Program

  attr_accessor :dirFunc, :dirVars, :dirAttrs, :dirClass, :memory, :dirConstantes

  def initialize()
    @dirFunc = FunctionTable.new
    @dirVars = VarTable.new()
    @dirAttrs = VarTable.new()
    @dirClass = ClassTable.new()
    @paramsMemory = []
    @memory = Memory.new()
    @dirConstantes = {}
  end

  def add_const (const, type)

    case type
    when "int"
      if !@dirConstantes[const.to_i]
        @dirConstantes[const.to_i] = @memory.get_const(type)
      end
    when "float"
      if !@dirConstantes[const.to_f]
        @dirConstantes[const.to_f] = @memory.get_const(type)
      end
    else
      if !@dirConstantes[const.to_f]
        @dirConstantes[const.to_f] = @memory.get_const(type)
      end
    end


  end

  def add_attrs ()
    @dirAttrs = @dirVars
    @dirVars = VarTable.new()
  end

  def add_var(id, type, scope, size, dim1, dim2)


    case type
    when "int", "float", "char", "bool"
      if @dirVars.exists(id)
        puts "ERROR: Existen declaraciones multiples de la Variable #{id}"
      else
        if @dirFunc.exists(id)
          puts "ERROR: Existen declaraciones hibirdas para #{id}"
        else

          memo = @memory.get_mem(type, scope, size)
          @dirVars.add_var(id, type, memo, size, dim1, dim2)

        end
      end
    else
      @dirVars.add_var("#{id}", type, "N/A", 1, 0, 0)
      @dirClass.classes[type].dirAttrs.variables.each do |key, elem|
        @dirVars.add_var("#{id}.#{key}", type, @memory.get_mem(elem.type, scope, 1), 1, 0, 0)
      end
    end

  end

  def add_param_mem(id)

    @paramsMemory.push( @dirVars.variables[id].memory)
  end

  def add_dim(id, type, dim1, dim2)

    if dim2.to_i > 0
      add_var(id, type, "global",dim1.to_i * dim2.to_i, dim1, dim2)
    else

      add_var(id, type, "global", dim1, dim1, dim2)
    end
  end

  def add_func(id, type, params, cuadInicial)

    @dirFunc.add_func(id, type, params, @paramsMemory, cuadInicial, @dirVars)
    @dirVars = VarTable.new()
    @memory.reset
    @paramsMemory = []

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

    puts ""
    puts "\tCONSTANTS:"
    puts @dirConstantes.to_s
    puts @dirConstantes.invert.to_s
    puts ""

  end

end
