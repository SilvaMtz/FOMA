class SemanticCube
  attr_accessor :semantic_cube


  def initialize()
    @semantic_cube = generate_cube()
  end

  def generate_cube ()
    return {
      ["int", "int", "=="]=>"bool",
      ["int", "int", ">"]=>"bool",
      ["int", "int", ">="]=>"bool",
      ["int", "int", "<"]=>"bool",
      ["int", "int", "<="]=>"bool",
      ["int", "int", "<>"]=>"bool",
      # ["int", "int", "and"]=>"bool",
      # ["int", "int", "or"]=>"bool",
      ["int", "int", "="]=>"int",
      ["float", "float", "=="]=>"bool",
      ["float", "float", ">"]=>"bool",
      ["float", "float", ">="]=>"bool",
      ["float", "float", "<"]=>"bool",
      ["float", "float", "<="]=>"bool",
      ["float", "float", "<>"]=>"bool",
      # ["float", "float", "and"]=>"bool",
      # ["float", "float", "or"]=>"bool",
      ["float", "float", "="]=>"float",
      ["bool", "bool", "=="]=>"bool",
      # ["bool", "bool", ">"]=>"bool",
      # ["bool", "bool", ">="]=>"bool",
      # ["bool", "bool", "<"]=>"bool",
      # ["bool", "bool", "<="]=>"bool",
      ["bool", "bool", "<>"]=>"bool",
      ["bool", "bool", "and"]=>"bool",
      ["bool", "bool", "or"]=>"bool",
      ["bool", "bool", "="]=>"bool",
      ["char", "char", "=="]=>"bool",
      ["char", "char", ">"]=>"bool",
      ["char", "char", ">="]=>"bool",
      ["char", "char", "<"]=>"bool",
      ["char", "char", "<="]=>"bool",
      ["char", "char", "<>"]=>"bool",
      ["char", "char", "and"]=>"bool",
      ["char", "char", "or"]=>"bool",
      ["char", "char", "="]=>"char",
      ["void", "void", "=="]=>"bool",
      ["void", "void", ">"]=>"bool",
      ["void", "void", ">="]=>"bool",
      ["void", "void", "<"]=>"bool",
      ["void", "void", "<="]=>"bool",
      ["void", "void", "<>"]=>"bool",
      ["void", "void", "and"]=>"bool",
      ["void", "void", "or"]=>"bool",
      ["void", "void", "="]=>"void",
      ["int", "float", "="]=>"float",
      ["int", "int", "/"]=>"float",
      ["int", "int", "+"]=>"int",
      ["int", "int", "-"]=>"int",
      ["int", "int", "*"]=>"int",
      ["int", "float", "+"]=>"float",
      ["int", "float", "-"]=>"float",
      ["int", "float", "*"]=>"float",
      ["int", "float", "/"]=>"float",
      ["float", "float", "/"]=>"float",
      ["float", "float", "+"]=>"float",
      ["float", "float", "-"]=>"float",
      ["float", "float", "*"]=>"float",
      ["float", "int", "+"]=>"float",
      ["float", "int", "-"]=>"float",
      ["float", "int", "*"]=>"float",
      ["float", "int", "/"]=>"float",
      ["char", "char", "+"]=>"char"
    }
  end

  def get_type(operIzqType, operDerType, operType)
    # puts "#{operIzqType} #{operDerType} #{operType}"

    return semantic_cube[[operIzqType, operDerType, operType]]
  end
end
