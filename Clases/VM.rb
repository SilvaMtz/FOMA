class VM

  attr_accessor :cuadruplos, :program, :cuadActual

  def initialize (cuadruplos, program)

    @cuadruplos = cuadruplos
    @program = program

    @activeRecord = []
    @runningMem = {}
    @globalMem = {}

    @cuadsAnt = []
    @cuadActual = 0

  end

  def run
    while (true)
      # puts "#{@cuadruplos.cuads[@cuadActual].operador} \t#{@cuadActual}"

      case @cuadruplos.cuads[@cuadActual].operador
        #GOTOS
      when "goto"
        @cuadActual = @cuadruplos.cuads[@cuadActual].resultado

      when "goto_f"
        memoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case memoryNumber
        when 4_000...5_000
          value = @globalMem[memoryNumber]
        when 14_000...15_000, 24_000...25_000
          value = @runningMem[memoryNumber]
        when 34_000...34_005
          value =  @program.dirConstantes.invert[memoryNumberq]
        else
          puts "ERROR. EN GOTO_F"
          exit
        end

        if (value == false)
          @cuadActual = @cuadruplos.cuads[@cuadActual].resultado
        else
          @cuadActual += 1
        end

        #INPUT Y OUTPUT
      when "print"

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado
        case resMemoryNumber
        when 1_000...5_000
          resValue = @globalMem[resMemoryNumber]
        when 11_000...15_000, 21_000...25_000
          resValue = @runningMem[resMemoryNumber]
        when 31_000...34_005
          resValue =  @program.dirConstantes.invert[resMemoryNumber]
        else
          puts "ERROR. EN PRINT VALOR RESULTADO"
          exit
        end

        puts "#{resValue}"
        @cuadActual += 1

      when "input"
        infoIn = $stdin.gets

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado
        case resMemoryNumber
        when 1_000...5_000
          @globalMem[resMemoryNumber] = infoIn
        when 11_000...15_000
          @runningMem[resMemoryNumber] = infoIn
        else
          puts "ERROR. EN INPUT VALOR RESULTADO"
          exit
        end
        @cuadActual += 1

      when "="

        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...5_000
          leftValue = @globalMem[leftMemoryNumber]
        when 11_000...15_000, 21_000...25_000
          leftValue = @runningMem[leftMemoryNumber]
        when 31_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        else
          puts "ERROR. EN ASSIGN VALOR IZQUIERDO"
          exit
        end

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado
        case resMemoryNumber
        when 1_000...5_000
          @globalMem[resMemoryNumber] = leftValue
        when 11_000...15_000
          @runningMem[resMemoryNumber] = leftValue
        else
          puts "ERROR. EN ASSIGN VALOR RESULTADO"
          exit
        end
        @cuadActual += 1



      when "+"

        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. SUMA DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN SUMA VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. SUMA DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN SUMA VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue + rightValue
        @cuadActual += 1

      when "-"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. RESTA DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN RESTA VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. RESTA DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN RESTA VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue - rightValue
        @cuadActual += 1

      when "*"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MULTIPLICACION VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MULTIPLICACION VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue * rightValue
        @cuadActual += 1

      when "/"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN DIVISION VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN DIVISION VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue / rightValue
        @cuadActual += 1

      when "%"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MODULO DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MODULO VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MODULO DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MODULO VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue % rightValue
        @cuadActual += 1


      when ">"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MAYOR VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MAYOR VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue > rightValue
        @cuadActual += 1


      when ">="
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MAYOR IGUAL VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MAYOR IGUAL VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue >= rightValue
        @cuadActual += 1

      when "<"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MENOR DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MENOR VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MENOR DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MENOR VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue < rightValue
        @cuadActual += 1

      when "<="
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MENOR IGUAL VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MENOR IGUAL VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue <= rightValue
        @cuadActual += 1

      when "=="
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber]

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber]

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        else
          puts "ERROR. EN IGUALDAD VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber]

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber]

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        else
          puts "ERROR. EN IGUALDAD VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue == rightValue
        @cuadActual += 1

      when "<>"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber]
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber]

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber]

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        else
          puts "ERROR. EN DESIGUALDAD VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer
        case rightMemoryNumber
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber]
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber]

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber]
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber]

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        else
          puts "ERROR. EN DESIGUALDAD VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue != rightValue
        @cuadActual += 1

      when "and"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...4_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber]

        when 31_000...34_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        else
          puts "ERROR. EN AND VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case rightMemoryNumber
        when 1_000...4_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber]

        when 31_000...34_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        else
          puts "ERROR. EN AND VALOR IZQUIERDO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue and rightValue
        @cuadActual += 1


      when "or"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case leftMemoryNumber
        when 1_000...4_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber]

        when 31_000...34_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber]
        else
          puts "ERROR. EN OR VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq
        case rightMemoryNumber
        when 1_000...4_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber]

        when 31_000...34_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber]
        else
          puts "ERROR. EN OR VALOR IZQUIERDO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = leftValue or rightValue
        @cuadActual += 1



      when "gosub"


        @activeRecord.push(@runningMem)
        @runningMem = @newMem

        @cuadActual += 1
        @cuadsAnt.push(@cuadActual)

        @cuadActual = @cuadruplos.cuads[@cuadActual-1].resultado


      when "era"

        @newMem = {}
        @cuadActual += 1

      when "param"
        puts "PARAMETROS NO DEFINIDOS"

      when "endproc"

        @cuadActual = @cuadsAnt.pop
        @runningMem = @activeRecord.pop

      when "endprogram"
        exit
      else
        puts "NOT YET DEFINED OR ERROR"
      end

    end

  end


end
