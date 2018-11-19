require_relative 'Cuadruplos'

class CuadruplosTable

  attr_accessor :cuads

  def initialize()
    @cuads = []
    @num = 0

    @memTemp = 10_000

    @pOperadores = []
    @pOperandos = []
    @pilaSaltos = []

    @swap = []

    # primerCuad()
  end

  # def primerCuad
  #   add_cuad("goto", "---","---", "---")
  # end

  def add_cuad(operador, operIzq, operDer, resultado)

    @cuads.push(Cuadruplos.new(@num, operador, operIzq, operDer, resultado))
    @num += 1
  end

  def drop_opp
    @pOperandos.pop
  end

  def emptyStack ()

    while  @pOperadores.length != 0
      operAnt = @pOperadores.pop
      case operAnt
      when "="
        operIzq = @pOperandos.pop
        resultado = @pOperandos.pop

        add_cuad(operAnt, operIzq, "---", resultado)


      else
        operDer = @pOperandos.pop
        operIzq = @pOperandos.pop
        add_cuad(operAnt, operIzq, operDer, @memTemp)
        @pOperandos.push(@memTemp)
        @memTemp += 1

      end
    end

  end

  def add_assign ()
    @pOperadores.push("=")
  end

  def add_SE (operador)

    if (@pOperadores.length == 0)
      @pOperadores.push(operador)
    else
      operAnt = @pOperadores.pop


      case operAnt
      when "*", "/", "%", "+", "-", ">", ">=", "<", "<=", "==", "<>", "and", "or"
        operDer = @pOperandos.pop
        operIzq = @pOperandos.pop

        add_cuad(operAnt, operIzq, operDer, @memTemp)

        @pOperandos.push("#{@memTemp}")
        @memTemp += 1

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
        add_cuad(operAnt, operIzq, operDer, @memTemp)
        @pOperandos.push(@memTemp)
        @memTemp += 1

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
        add_cuad(operAnt, operIzq, operDer, @memTemp)
        @pOperandos.push(@memTemp)
        @memTemp += 1

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
        add_cuad(operAnt, operIzq, operDer, @memTemp)
        @pOperandos.push(@memTemp)
        @memTemp += 1

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
      add_cuad(operAnt, operIzq, operDer, @memTemp)
      @pOperandos.push(@memTemp)
      @memTemp += 1

      operAnt = @pOperadores.pop
    end
  end

  def add_operando (operando)
    puts "OPERNADO #{operando}"
    @pOperandos.push(operando)

  end

  def goto_falso ()
    operIzq = @pOperandos.pop
    @pilaSaltos.push(@num)

    add_cuad("goto_f", operIzq, "---", "---")
  end

  def goto_else ()
    puts "IN"
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



  def add_swap ()
    @swap.push(@num)
  end

  def do_swap ()
    upp_lim = @swap.pop
    low_lim = @swap.pop

    cuadsTemp = []

    puts "Alive 1"
    for i in low_lim...upp_lim do
      cuadsTemp[i-low_lim] = @cuads[i]
    end


    puts "#{upp_lim}  #{low_lim}"
    for i in upp_lim ... @num do
      @cuads[i - (upp_lim - low_lim)] = @cuads[i]
      @cuads[i - (upp_lim - low_lim)].num = i - (upp_lim - low_lim)
    end

    puts "Alive 3" 
    for i in (@num - (upp_lim - low_lim)) ... @num do
      @cuads[i] = cuadsTemp[i - (@num - (upp_lim - low_lim))]
      @cuads[i].num = i
    end


  end









  def display()
   @cuads.each do |cuad|
     puts "#{cuad.num}\t#{cuad.operador}\t#{cuad.operIzq}\t#{cuad.operDer}\t#{cuad.resultado}"
   end
  end

end
