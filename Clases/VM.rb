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
        @cuadActual = @cuadruplos.cuads[@cuadActual].resultado.to_i

      when "goto_f"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA GOTO_F IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 4_000...5_000
          value = @globalMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          value = @runningMem[leftMemoryNumber.to_i]
        when 34_000...34_005
          value =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        else
          puts "ERROR. EN GOTO_F"
          exit
        end

        if (value == false)
          @cuadActual = @cuadruplos.cuads[@cuadActual].resultado.to_i
        else
          @cuadActual += 1
        end

        #INPUT Y OUTPUT
      when "print"

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado

        if resMemoryNumber[0] == '('

          resMemoryNumber = resMemoryNumber[1..-2].to_i
          case resMemoryNumber.to_i
          when 1_000...5_000
            resMemoryNumber = @globalMem[resMemoryNumber.to_i]
          when 11_000...15_000, 21_000...25_000
            resMemoryNumber = @runningMem[resMemoryNumber.to_i]
          end

        end
        # puts resMemoryNumber
        # puts @globalMem.to_s
        case resMemoryNumber.to_i
        when 1_000...5_000
          resValue = @globalMem[resMemoryNumber.to_i]
        when 11_000...15_000, 21_000...25_000
          resValue = @runningMem[resMemoryNumber.to_i]
        when 31_000...34_005
          resValue =  @program.dirConstantes.invert[resMemoryNumber.to_i]
        else
          puts "ERROR. EN PRINT VALOR RESULTADO"
          exit
        end

        puts "#{resValue}"
        @cuadActual += 1

      when "input"
        infoIn = $stdin.gets

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado

        if resMemoryNumber[0] == '('
          resMemoryNumber = resMemoryNumber[1..-2].to_i
        end
        case resMemoryNumber.to_i
        when 1_000...5_000
          @globalMem[resMemoryNumber.to_i] = infoIn
        when 11_000...15_000
          @runningMem[resMemoryNumber.to_i] = infoIn
        else
          puts "ERROR. EN INPUT VALOR RESULTADO"
          exit
        end
        @cuadActual += 1


      when "="

        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA ASSIGN IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...5_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 11_000...15_000, 21_000...25_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 31_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]

        else
          puts "ERROR. EN ASSIGN VALOR IZQUIERDO"
          exit
        end

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado

        if resMemoryNumber[0] == '('

          resMemoryNumber = resMemoryNumber[1..-2].to_i
          case resMemoryNumber.to_i
          when 1_000...5_000
            resMemoryNumber = @globalMem[resMemoryNumber.to_i]
          when 11_000...15_000, 21_000...25_000
            resMemoryNumber = @runningMem[resMemoryNumber.to_i]
          end

        end

        case resMemoryNumber.to_i
        when 1_000...5_000
          @globalMem[resMemoryNumber.to_i] = leftValue
          # puts "#{resMemoryNumber}  = #{leftMemoryNumber} = #{leftValue}"
        when 11_000...15_000
          @runningMem[resMemoryNumber.to_i] = leftValue
        else
          puts "ERROR. EN ASSIGN VALOR RESULTADO"
          exit
        end
        @cuadActual += 1



      when "+"

        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA SUMA IZQ"
          end
        end


        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. SUMA DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN SUMA VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA SUMA DERECHA"
          end
        end

        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. SUMA DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. SUMA DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN SUMA VALOR DERECHO"
          exit
        end
# puts  "#{(leftValue + rightValue)} #{leftValue} + #{rightValue} "
        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue + rightValue
        @cuadActual += 1

      when "-"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA RESTA IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. RESTA DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN RESTA VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA RESTA DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. RESTA DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. RESTA DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN RESTA VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue - rightValue
        @cuadActual += 1

      when "*"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MULT IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MULTIPLICACION VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MULT DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MULTIPLICACION DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MULTIPLICACION VALOR DERECHO"
          exit
        end
  #     puts  "#{(leftValue > rightValue)} #{leftValue}  #{rightValue} "
        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue * rightValue
        @cuadActual += 1

      when "/"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA DIV IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN DIVISION VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA DIV DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. DIVISION DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN DIVISION VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue / rightValue
        @cuadActual += 1

      when "%"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MOD IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MODULO DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MODULO VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MOD DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MODULO DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MODULO DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MODULO VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue % rightValue
        @cuadActual += 1


      when ">"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i

          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MAYOR IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MAYOR VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MAYOR DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MAYOR DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MAYOR VALOR DERECHO"
          exit
        end
        # puts  "#{(leftValue > rightValue)} #{leftValue}  #{rightValue} "
        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue > rightValue
        @cuadActual += 1


      when ">="
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MAYOR IGUAL IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MAYOR IGUAL VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MAYOR IGUAL DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MAYOR IGUAL DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MAYOR IGUAL VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue >= rightValue
        @cuadActual += 1

      when "<"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MENOR IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MENOR DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MENOR VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MENOR DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MENOR DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MENOR VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue < rightValue
        @cuadActual += 1

      when "<="
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MENOR IGUAL IZQ"
          end
        end


        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO IZQ "
          exit
        else
          puts "ERROR. EN MENOR IGUAL VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA MENOR IGUAL DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO DER "
          exit

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          puts"ERROR. MENOR IGUAL DE BOOLEANO OPERANDO DER "
          exit
        else
          puts "ERROR. EN MENOR IGUAL VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue <= rightValue
        @cuadActual += 1

      when "=="
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA IGUALDAD IZQ"
          end
        end


        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber.to_i]

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber.to_i]

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        else
          puts "ERROR. EN IGUALDAD VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA IGUALDAD DERECHA"
          end
        end

        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber.to_i]

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber.to_i]

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        else
          puts "ERROR. EN IGUALDAD VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue == rightValue
        @cuadActual += 1

      when "<>"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA DESIGUALDAD IZQ"
          end
        end


        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber.to_i]

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber.to_i]

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        else
          puts "ERROR. EN DESIGUALDAD VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA DESIGUALDAD DERECHA"
          end
        end

        case rightMemoryNumber.to_i
        when 1_000...2_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_i
        when 2_000...3_000
          rightValue = @globalMem[rightMemoryNumber.to_i].to_f
        when 3_000...4_000
          rightValue = @globalMem[rightMemoryNumber.to_i]
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber.to_i]

        when 11_000...12_000, 21_000...22_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          rightValue = @runningMem[rightMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          rightValue = @runningMem[rightMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber.to_i]

        when 31_000...32_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_i
        when 32_000...33_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i].to_f
        when 33_000...34_000
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        else
          puts "ERROR. EN DESIGUALDAD VALOR DERECHO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue != rightValue
        @cuadActual += 1

      when "and"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA AND IZQ"
          end
        end


        case leftMemoryNumber.to_i
        when 1_000...4_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber.to_i]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber.to_i]

        when 31_000...34_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        else
          puts "ERROR. EN AND VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA AND DERECHA"
          end
        end
        case rightMemoryNumber.to_i
        when 1_000...4_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber.to_i]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber.to_i]

        when 31_000...34_000
          puts "ERROR. AND CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        else
          puts "ERROR. EN AND VALOR IZQUIERDO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue and rightValue
        @cuadActual += 1


      when "or"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA OR IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...4_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber.to_i]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber.to_i]

        when 31_000...34_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        else
          puts "ERROR. EN OR VALOR IZQUIERDO"
          exit
        end


        rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer

        if rightMemoryNumber[0] == '('
          rightMemoryNumber = rightMemoryNumber[1..-2].to_i
          case rightMemoryNumber.to_i
          when 1_000...5_000
            rightMemoryNumber = @globalMem[rightMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            rightMemoryNumber = @runningMem[rightMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA OR DERECHA"
          end
        end

        case rightMemoryNumber.to_i
        when 1_000...4_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 4_000...5_000
          rightValue = @globalMem[rightMemoryNumber.to_i]

        when 11_000...14_000, 21_000...24_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 14_000...15_000, 24_000...25_000
          rightValue = @runningMem[rightMemoryNumber.to_i]

        when 31_000...34_000
          puts "ERROR. OR CON VALORES NO BOOLEANOS"
          exit
        when 34_000...34_005
          rightValue =  @program.dirConstantes.invert[rightMemoryNumber.to_i]
        else
          puts "ERROR. EN OR VALOR IZQUIERDO"
          exit
        end

        @runningMem[@cuadruplos.cuads[@cuadActual].resultado.to_i] = leftValue or rightValue
        @cuadActual += 1



      when "gosub"


        @activeRecord.push(@runningMem)
        @runningMem = @newMem

        @cuadActual += 1
        @cuadsAnt.push(@cuadActual)

        @cuadActual = @cuadruplos.cuads[@cuadActual-1].resultado


      when "era"

        @functionName = @cuadruplos.cuads[@cuadActual].operIzq
        @newMem = {}
        @cuadActual += 1

      when "param"
        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA PARAM IZQ"
          end
        end

        case leftMemoryNumber.to_i
        when 1_000...2_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_i
        when 2_000...3_000
          leftValue = @globalMem[leftMemoryNumber.to_i].to_f
        when 3_000...4_000
          leftValue = @globalMem[leftMemoryNumber.to_i]
        when 4_000...5_000
          leftValue = @globalMem[leftMemoryNumber.to_i]

        when 11_000...12_000, 21_000...22_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_i
        when 12_000...13_000, 22_000...23_000
          leftValue = @runningMem[leftMemoryNumber.to_i].to_f
        when 13_000...14_000, 23_000...24_000
          leftValue = @runningMem[leftMemoryNumber.to_i]
        when 14_000...15_000, 24_000...25_000
          leftValue = @runningMem[leftMemoryNumber.to_i]

        when 31_000...32_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_i
        when 32_000...33_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i].to_f
        when 33_000...34_000
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        when 34_000...34_005
          leftValue =  @program.dirConstantes.invert[leftMemoryNumber.to_i]
        else
          puts "ERROR. EN PARAM VALOR IZQUIERDO"

          exit
        end

        paramPos = @cuadruplos.cuads[@cuadActual].resultado.to_i
        memoryNumber = @program.dirFunc.get_function(@functionName).paramsMemory[paramPos]


        @newMem[memoryNumber] = leftValue

        @cuadActual += 1

      when "endproc"

        @cuadActual = @cuadsAnt.pop
        @runningMem = @activeRecord.pop

      when "return"

        resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado

        resMemoryNumber = resMemoryNumber[1..-2].to_i
        case resMemoryNumber.to_i
        when 1_000...5_000
          resMemoryNumber = @globalMem[resMemoryNumber.to_i]
        when 11_000...15_000, 21_000...25_000
          resMemoryNumber = @runningMem[resMemoryNumber.to_i]
        end

        case resMemoryNumber.to_i
        when 1_000...5_000
          resValue = @globalMem[resMemoryNumber.to_i]
        when 11_000...15_000, 21_000...25_000
          resValue = @runningMem[resMemoryNumber.to_i]
        when 31_000...34_005
          resValue =  @program.dirConstantes.invert[resMemoryNumber.to_i]
        else
          puts "ERROR. EN PRINT VALOR RESULTADO"
          exit
        end



        @cuadActual = @cuadsAnt.pop
        @runningMem = @activeRecord.pop

        leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq

        if leftMemoryNumber[0] == '('
          leftMemoryNumber = leftMemoryNumber[1..-2].to_i
          case leftMemoryNumber.to_i
          when 1_000...5_000
            leftMemoryNumber = @globalMem[leftMemoryNumber.to_i].to_i
          when 10_000...15_000, 21_000...25_000
            leftMemoryNumber = @runningMem[leftMemoryNumber.to_i].to_i
          else
            puts "ERROR. MEMORIA INDIRECTA SUMA IZQ"
          end
        end


        case leftMemoryNumber.to_i
        when 1_000...2_000
          @globalMem[leftMemoryNumber.to_i] = resValue.to_i
        when 2_000...3_000
          @globalMem[leftMemoryNumber.to_i] = resValue.to_f
        when 3_000...4_000
          @globalMem[leftMemoryNumber.to_i] = resValue
        when 4_000...5_000
          @globalMem[leftMemoryNumber.to_i] = resValue

        when 11_000...12_000, 21_000...22_000
          @runningMem[leftMemoryNumber.to_i] = resValue.to_i
        when 12_000...13_000, 22_000...23_000
          @runningMem[leftMemoryNumber.to_i] = resValue.to_f
        when 13_000...14_000, 23_000...24_000
          @runningMem[leftMemoryNumber.to_i] = resValue
        when 14_000...15_000, 24_000...25_000
          @runningMem[leftMemoryNumber.to_i] = resValue

        else
          puts "ERROR. EN RETURN VALOR IZQUIERDO"
          exit
        end


      when "retorno"
          @cuadActual += 1

      when "range"

        # leftMemoryNumber = @cuadruplos.cuads[@cuadActual].operIzq.to_i
        # rightMemoryNumber = @cuadruplos.cuads[@cuadActual].operDer.to_i
        # resMemoryNumber = @cuadruplos.cuads[@cuadActual].resultado.to_i
        #
        #
        # leftValue = @program.dirConstantes.invert[leftMemoryNumber.to_i]
        # rightValue = @program.dirConstantes.invert[rightMemoryNumber.to_i]
        # resValue = @program.dirConstantes.invert[resMemoryNumber.to_i]
        #
        #
        # if (leftValue.to_i < rightValue.to_i or  resValue.to_i < leftValue.to_i)
        #   puts "ERROR: EL ARREGLO NO ESTA DENTRO DE LOS LIMITES"
        #   exit
        # end


        @cuadActual += 1

      when "endprogram"
        exit
      else
        puts "NOT YET DEFINED OR ERROR"
      end

    end

  end


end
