require_relative 'Cuadruplos'

class CuadruplosTable

  attr_accessor :cuads

  def initialize()
    @cuads = []
  end

  def add_cuad(num, operador, operIzq, operDer, resultado)
    @cuads.push(Cuadruplos.new(num, operador, operIzq, operDer, resultado))
  end

 def display()
   @cuads.each do |cuad|
     puts "#{cuad.num}\t#{cuad.operador}\t#{cuad.operIzq}\t#{cuad.operDer}\t#{cuad.resultado}"
   end
 end

end
