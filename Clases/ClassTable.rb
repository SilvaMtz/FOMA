require_relative 'ClassElements'

class ClassTable

  attr_accessor :classes

  def initialize()
    @classes = {}
  end

  def add_class(id, dirAttrs)
    @classes[id] = ClassElements.new(id, dirAttrs)
  end

  def exists (id)
    @classes.key?(id)
  end

  def get_class(id)
    @classes[id]
  end

  def display()

    @classes.each do |key, classElements|
      puts "\tCLASS #{key}"
      classElements.dirAttrs.display
    end
  end

end
