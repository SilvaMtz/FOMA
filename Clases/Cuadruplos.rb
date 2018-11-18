class Cuadruplos

  attr_accessor :num, :operador, :operIzq, :operDer, :resultado

  def initialize (num, operador, operIzq, operDer, resultado)
    @num = num
    @operador = operador
    @operIzq = operIzq
    @operDer = operDer
    @resultado = resultado
  end

end
