require_relative 'Cuadruplos'
require_relative 'SemanticCube'

class CuadruplosTable

  attr_accessor :cuads, :num, :indirect

  def initialize(program)
    @cuads = []
    @num = 0
    @program = program
    @semCube = SemanticCube.new()

    @mem = @program.memory
    @memTemp = 10_000

    @pOperadores = []
    @pOperandos = []
    @pilaSaltos = []

    @swap = []
    @indirect = false

  end
###############################################################################
#
#
#
###############################################################################
    def add_cuad(operador, operIzq, operDer, resultado)
      @cuads.push(Cuadruplos.new(@num, operador, operIzq, operDer, resultado))
      @num += 1
    end

    def display()
      @program.display
      @cuads.each do |cuad|
        puts "#{cuad.num}\t#{cuad.operador}\t#{cuad.operIzq}\t#{cuad.operDer}\t#{cuad.resultado}"
      end
    end

###############################################################################
#
#
#
###############################################################################
  def goto_main ()
    add_cuad("goto", "---", "---", "---")
  end

  def fill_main()
    @cuads[0].resultado = @num
  end

  def end_prog()
    add_cuad("endprogram", "---", "---", "---")
  end


###############################################################################
#
#
#
###############################################################################
  def goto_falso ()
    operIzq = @pOperandos.pop
    @pilaSaltos.push(@num)
    add_cuad("goto_f", operIzq, "---", "---")
  end

  def goto_else ()

    saltoAnt = @pilaSaltos.pop
    @cuads[saltoAnt].resultado = @num + 1

    @pilaSaltos.push(@num)
    add_cuad("goto", "---", "---", "---")
  end

  def fill_goto()
    saltoAnt = @pilaSaltos.pop
    @cuads[saltoAnt].resultado = @num
  end

  def save_spot ()
    @pilaSaltos.push(@num)
  end

  def goto_loop()
    saltoAnt = @pilaSaltos.pop
    @cuads[saltoAnt].resultado = @num + 1

    saltoAnt = @pilaSaltos.pop
    add_cuad("goto", "---", "---", saltoAnt)
  end

###############################################################################
#
#
#
###############################################################################


  def calc_res_type(operador, operIzq,  operDer)

    operIzqType = get_type(operIzq)
    operDerType = get_type(operDer)
    return @semCube.get_type(operIzqType, operDerType, operador)
  end

  def get_type (memNum)
    case (memNum%10000)
    when 1000...2000
      return "int"
    when 2000...3000
      return "float"
    when 3000...4000
      return "char"
    when 4000...5000
      return "bool"
    else
     return "int"
    end
  end

###############################################################################
# GENERACION DE CODIGO INTERMEDIO PARA EXPRESIONES ARITMETICAS
# Y ESTATUTOS SECUENCIALES
#
###############################################################################

  def add_SE (operador)

    if (@pOperadores.length == 0)
      @pOperadores.push(operador)
    else
      operAnt = @pOperadores.pop

      case operAnt
      when "*", "/", "%", "+", "-", ">", ">=", "<", "<=", "==", "<>", "and", "or"
        operDer = @pOperandos.pop
        operIzq = @pOperandos.pop


        resType = calc_res_type(operAnt, operIzq,  operDer)
        memT = @mem.get_temp(resType)

        add_cuad(operAnt, operIzq, operDer, memT)
        @pOperandos.push(memT)

        add_SE(operador)
      else
        @pOperadores.push(operAnt)
        @pOperadores.push(operador)
      end
    end


  end

  def add_E (operador)

    if (@pOperadores.length == 0)
      @pOperadores.push(operador)
    else
      operAnt = @pOperadores.pop
      case operAnt
      when "*", "/", "%", "+", "-", ">", ">=", "<", "<=", "==", "<>"
        operDer = @pOperandos.pop
        operIzq = @pOperandos.pop

        resType = calc_res_type(operAnt, operIzq,  operDer)
        memT = @mem.get_temp(resType)

        add_cuad(operAnt, operIzq, operDer, memT)
        @pOperandos.push(memT)

        add_E(operador)
      else
        @pOperadores.push(operAnt)
        @pOperadores.push(operador)
      end
    end

  end

  def add_EXP (operador)

    if (@pOperadores.length == 0)
      @pOperadores.push(operador)
    else
      operAnt = @pOperadores.pop
      case operAnt
      when "*", "/", "%", "+", "-"
        operDer = @pOperandos.pop
        operIzq = @pOperandos.pop

        resType = calc_res_type(operAnt, operIzq,  operDer)
        memT = @mem.get_temp(resType)

        add_cuad(operAnt, operIzq, operDer, memT)
        @pOperandos.push(memT)

        add_EXP(operador)
      else
        @pOperadores.push(operAnt)
        @pOperadores.push(operador)
      end
    end

  end

  def add_T (operador)

    if (@pOperadores.length == 0 )
      @pOperadores.push(operador)
    else
      operAnt = @pOperadores.pop
      case operAnt
      when "*", "/", "%"
        operDer = @pOperandos.pop
        operIzq = @pOperandos.pop

        resType = calc_res_type(operAnt, operIzq,  operDer)
        memT = @mem.get_temp(resType)

        add_cuad(operAnt, operIzq, operDer, memT)
        @pOperandos.push(memT)

        @pOperadores.push(operador)
      else
        @pOperadores.push(operAnt)
        @pOperadores.push(operador)
      end
    end

  end

  def add_falseBottom ()
    @pOperadores.push("(")
  end

  def rem_falseBottom ()
    operAnt = @pOperadores.pop
    while operAnt != "("
      operDer = @pOperandos.pop
      operIzq = @pOperandos.pop

      resType = calc_res_type(operAnt, operIzq,  operDer)
      memT = @mem.get_temp(resType)

      add_cuad(operAnt, operIzq, operDer, memT)
      @pOperandos.push(memT)

      operAnt = @pOperadores.pop
    end
  end

  ###############################################################################
  #
  #
  #
  ###############################################################################

  def add_operando (operando, scope)

    #AGREGAR DIRECCIONES RELATIVAS

    if @indirect
      type = scope[/.\./][0...-1]
      @pOperandos.push("(#{@program.dirAttrs.variables[operando].memory})")
      @indirect = false

    else
      if @program.dirFunc.functions[scope].dirVars.exists(operando)
        @pOperandos.push(@program.dirFunc.functions[scope].dirVars.variables[operando].memory)

      elsif @program.dirFunc.exists("global") and @program.dirFunc.functions["global"].dirVars.exists(operando)
        if @program.dirFunc.functions["global"].dirVars.variables[operando].dim1 != 0
          if  @program.dirFunc.functions["global"].dirVars.variables[operando].dim2 == 0
            array_code(operando)

          else
            mat_code(operando)
          end
        else
          @pOperandos.push(@program.dirFunc.functions["global"].dirVars.variables[operando].memory)
        end

      else
        puts "ERROR. LA VARIABLE #{operando} no existe"
      end
    end




  end

  def add_oper_const(operando, type)

    case type
    when "int"
      @pOperandos.push(@program.dirConstantes[operando.to_i])
    when "float"
        @pOperandos.push(@program.dirConstantes[operando.to_f])
    else
        @pOperandos.push(@program.dirConstantes[operando])
    end


  end

  def array_code(operando)

    @pOperandos.push(@program.dirFunc.functions["global"].dirVars.variables[operando].memory)

    lim_inf = 0;
    @program.add_const(lim_inf.to_int, "int")
    add_oper_const(lim_inf, "int")
    lim_inf = @pOperandos.pop

    lim_sup = @program.dirFunc.functions["global"].dirVars.variables[operando].dim1
    @program.add_const(lim_sup.to_i, "int")
    add_oper_const(lim_sup, "int")
    lim_sup = @pOperandos.pop

    dirBase = @pOperandos.pop
    @program.add_const(dirBase.to_int, "int")
    add_oper_const(dirBase, "int")
    dirBase = @pOperandos.pop

    operIzq = @pOperandos.pop

    add_cuad("range", operIzq, lim_inf, lim_sup)

    type = @program.dirFunc.functions["global"].dirVars.variables[operando].type
    memT = @mem.get_temp(type)
    @pOperandos.push("(#{memT})")



    add_cuad("+", operIzq, dirBase, memT)

  end

  def mat_code(operando)

    @pOperandos.push(@program.dirFunc.functions["global"].dirVars.variables[operando].memory)
    puts @pOperandos.to_s
    lim_inf = 0;
    @program.add_const(lim_inf.to_i, "int")
    add_oper_const(lim_inf, "int")
    lim_inf = @pOperandos.pop

    lim_sup = @program.dirFunc.functions["global"].dirVars.variables[operando].dim1
    @program.add_const(lim_sup.to_i, "int")
    add_oper_const(lim_sup, "int")
    lim_sup = @pOperandos.pop

    lim_sup2 = @program.dirFunc.functions["global"].dirVars.variables[operando].dim1
    @program.add_const(lim_sup2.to_i, "int")
    add_oper_const(lim_sup2, "int")
    lim_sup2 = @pOperandos.pop

    dirBase = @pOperandos.pop
    @program.add_const(dirBase.to_i, "int")
    add_oper_const(dirBase, "int")
    dirBase = @pOperandos.pop

    operIzq2 = @pOperandos.pop
    operIzq = @pOperandos.pop

    add_cuad("range", operIzq, lim_inf, lim_sup)

    type = @program.dirFunc.functions["global"].dirVars.variables[operando].type
    memT = @mem.get_temp(type)
    @pOperandos.push("(#{memT})")

    add_cuad("*", operIzq, lim_sup2, memT)
    add_cuad("+", memT, dirBase, memT)

    add_cuad("range", operIzq2, lim_inf, lim_sup2)
    add_cuad("+", operIzq2, memT, memT)

  end

  ###############################################################################
  #
  #
  #
  ###############################################################################

  def add_swap ()
    @swap.push(@num)
  end

  def do_swap ()
    upp_lim = @swap.pop
    low_lim = @swap.pop

    cuadsTemp = []

    for i in low_lim...upp_lim do
      cuadsTemp[i-low_lim] = @cuads[i]
    end

    for i in upp_lim ... @num do
      @cuads[i - (upp_lim - low_lim)] = @cuads[i]
      @cuads[i - (upp_lim - low_lim)].num = i - (upp_lim - low_lim)

      case @cuads[i - (upp_lim - low_lim)].operador
      when "goto", "goto_f"
        @cuads[i - (upp_lim - low_lim)].resultado =  @cuads[i - (upp_lim - low_lim)].resultado - (upp_lim - low_lim)
      end
    end

    for i in (@num - (upp_lim - low_lim)) ... @num do
      @cuads[i] = cuadsTemp[i - (@num - (upp_lim - low_lim))]
      @cuads[i].num = i
    end
  end

###############################################################################
#
#
#
###############################################################################
  def do_assign ()
    operIzq = @pOperandos.pop
    resultado = @pOperandos.pop
    add_cuad("=", operIzq, "---", resultado)
  end

  def do_print()
    resultado = @pOperandos.pop
    add_cuad("print", "---", "---", resultado)
  end

  def do_input()
    resultado = @pOperandos.pop
    add_cuad("input", "---", "---", resultado)
  end
###############################################################################
#
#
#
###############################################################################


  def end_proc
    add_cuad("endproc", "---", "---", "---")
  end

  def go_sub(id)
    add_cuad("gosub",id, "---" ,  @program.dirFunc.get_function(id).cuadInicial)
  end

  def era(id)
    if !@program.dirFunc.exists(id)
      puts "ERROR. LA FUNCION #{id} NO EXISTE"
      exit
    else
      add_cuad("era",id, "---" , "---")
    end
  end

  def pass_attrs (id, type)

    # TABLA DE VARIABLES DE UNA CLASE
    @program.dirClass.get_class(type).dirAttrs.variables.each do |key, variable|

      mem = @program.dirFunc.functions["global"].dirVars.variables["#{id}.#{key}"].memory
      @program.add_const(mem, "int")
      add_oper_const(mem, "int")
      mem = @pOperandos.pop

      add_cuad("=",mem, "---" , "#{variable.memory}")
    end

  end

  def params(paramNum)
    resultado = @pOperandos.pop
    add_cuad("param",resultado, "---" , "#{paramNum}")
  end

  def do_return(scope)
    resultado = @pOperandos.pop
    add_cuad("return","---", "---" , resultado)
  end

  def return_type(id)
    if @program.dirFunc.functions[id].type != "void"
      memT = @mem.get_temp(@program.dirFunc.functions[id].type)
      @pOperandos.push(memT)
      add_cuad("retorno", memT, "---", "---")
    end
  end


end
