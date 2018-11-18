require_relative 'ClassElements'

class ClassTable

  attr_accessor :classes

  def initialize()
    @classes = {}
  end

  def add_class(id, dirAttrs, dirFunc)
    @classes[id] = ClassElements.new(id, dirAttrs, dirFunc)
  end

  def exists (id)
    @classes.key?(id)
  end

  def get_class(id)
    @classes[id]
  end

  def display()
    puts "Tabla de Clases:"
    puts ""
    @classes.each do |key, classElements|
      puts "CLASS ID = #{key}"
      puts "ATTRS: "
      classElements.dirAttrs.display
      puts "METHODS"
      classElements.dirFunc.display
    end
    puts ""
  end

end
