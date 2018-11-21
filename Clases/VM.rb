class VM

  attr_accessor :cuadruplos, :program, :cuadActual

  def initialize (cuadruplos, program)

    @cuadruplos = cuadruplos
    @program = program

    @activeRecord = []
    @runningMem = {}

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
        if (@runningMem[@cuadruplos.cuads[@cuadActual].operIzq] == false)
          @cuadActual = @cuadruplos.cuads[@cuadActual].resultado
        else
          @cuadActual += 1
        end

        #INPUT Y OUTPUT
      when "print"
        puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado] }"
        @cuadActual += 1

      when "input"
        infoIn = $stdin.gets
        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = infoIn
        @cuadActual += 1

      when "="
        # puts "#{@program.dirConstantes.invert[@cuadruplos.cuads[@cuadActual].operIzq]}"
        case @cuadruplos.cuads[@cuadActual].operIzq
        when 30_000...40_000
            @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = @program.dirConstantes.invert[@cuadruplos.cuads[@cuadActual].operIzq]
            # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado] }"
        else
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = @runningMem[@cuadruplos.cuads[@cuadActual].operIzq]
        end
        @cuadActual += 1

      when "=="
        operIzq = @cuadruplos.cuads[@cuadActual].operIzq
        operDer = @cuadruplos.cuads[@cuadActual].operDer
        if operIzq >= 30_000 and operDer >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i == @program.dirConstantes.invert[operDer].to_i
        elsif operIzq >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i ==  @runningMem[operDer].to_i
        elsif operDer >= 30_000
           # puts "#{@runningMem[operIzq]} + #{@program.dirConstantes.invert[operDer]} = #{@runningMem[operIzq].to_i == @program.dirConstantes.invert[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = @runningMem[operIzq].to_i == @program.dirConstantes.invert[operDer].to_i
           # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado]}"
        else
          # puts "#{@runningMem[operIzq]} + #{@runningMem[operDer].to_i} = #{@runningMem[operIzq].to_i + @runningMem[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @runningMem[operIzq].to_i ==  @runningMem[operDer].to_i
        end
        @cuadActual += 1


      when "+"
        operIzq = @cuadruplos.cuads[@cuadActual].operIzq
        operDer = @cuadruplos.cuads[@cuadActual].operDer
        if operIzq >= 30_000 and operDer >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i + @program.dirConstantes.invert[operDer].to_i
        elsif operIzq >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i +  @runningMem[operDer].to_i
        elsif operDer >= 30_000
           # puts "#{@runningMem[operIzq]} + #{@program.dirConstantes.invert[operDer]} = #{@runningMem[operIzq].to_i + @program.dirConstantes.invert[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = @runningMem[operIzq].to_i + @program.dirConstantes.invert[operDer].to_i
           # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado]}"
        else
          # puts "#{@runningMem[operIzq]} + #{@runningMem[operDer].to_i} = #{@runningMem[operIzq].to_i + @runningMem[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @runningMem[operIzq].to_i +  @runningMem[operDer].to_i
        end
        @cuadActual += 1

      when "-"
        operIzq = @cuadruplos.cuads[@cuadActual].operIzq
        operDer = @cuadruplos.cuads[@cuadActual].operDer
        if operIzq >= 30_000 and operDer >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i - @program.dirConstantes.invert[operDer].to_i
        elsif operIzq >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i -  @runningMem[operDer].to_i
        elsif operDer >= 30_000
           # puts "#{@runningMem[operIzq]} - #{@program.dirConstantes.invert[operDer]} = #{@runningMem[operIzq].to_i - @program.dirConstantes.invert[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = @runningMem[operIzq].to_i - @program.dirConstantes.invert[operDer].to_i
           # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado]}"
        else
          # puts "#{@runningMem[operIzq]} - #{@runningMem[operDer].to_i} = #{@runningMem[operIzq].to_i - @runningMem[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @runningMem[operIzq].to_i -  @runningMem[operDer].to_i
        end
        @cuadActual += 1

      when "*"
        operIzq = @cuadruplos.cuads[@cuadActual].operIzq
        operDer = @cuadruplos.cuads[@cuadActual].operDer
        if operIzq >= 30_000 and operDer >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i * @program.dirConstantes.invert[operDer].to_i
        elsif operIzq >= 30_000
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @program.dirConstantes.invert[operIzq].to_i *  @runningMem[operDer].to_i
        elsif operDer >= 30_000
           # puts "#{@runningMem[operIzq]} * #{@program.dirConstantes.invert[operDer]} = #{@runningMem[operIzq].to_i * @program.dirConstantes.invert[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = @runningMem[operIzq].to_i * @program.dirConstantes.invert[operDer].to_i
           # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado]}"
        else
          # puts "#{@runningMem[operIzq]} * #{@runningMem[operDer].to_i} = #{@runningMem[operIzq].to_i * @runningMem[operDer].to_i}"
          @runningMem[@cuadruplos.cuads[@cuadActual].resultado] =  @runningMem[operIzq].to_i *  @runningMem[operDer].to_i
        end
        @cuadActual += 1

      when ">"
        # puts "#{@cuadruplos.cuads[@cuadActual].operIzq} > #{@cuadruplos.cuads[@cuadActual].operDer} "
        # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].operIzq]} > #{@runningMem[@cuadruplos.cuads[@cuadActual].operDer]} "
        # puts "#{@cuadruplos.cuads[@cuadActual].resultado}"
        @runningMem[@cuadruplos.cuads[@cuadActual].resultado] = (@runningMem[@cuadruplos.cuads[@cuadActual].operIzq].to_f > @runningMem[@cuadruplos.cuads[@cuadActual].operDer].to_f)
        # puts "#{@runningMem[@cuadruplos.cuads[@cuadActual].resultado] }"
        @cuadActual += 1
      when "endprogram"
        exit
      else
        puts "NOT YET DEFINED OR ERROR"
      end

    end

  end


end
