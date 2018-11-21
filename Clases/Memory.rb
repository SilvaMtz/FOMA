class Memory

  attr_accessor :globalInt, :globalFloat, :globalChar, :globalBool, :localInt, :localFloat, :localChar, :localBool, :temps

  def initialize ()
    @globalInt = 1_000
    @globalFloat = 2_000
    @globalChar = 3_000
    @globalBool = 4_000

    @localInt = 11_000
    @localFloat = 12_000
    @localChar = 13_000
    @localBool = 14_000

    @tempInt = 21_000
    @temoFloat = 22_000
    @tempChar = 23_000
    @tempBool = 24_000

    @constInt = 31_000
    @constFloat = 32_000
    @constChar = 33_000
    @constBool = 34_000
  end

  def reset
    @localInt = 11_000
    @localFloat = 12_000
    @localChar = 13_000
    @localBool = 14_000
  end

  def get_mem (type, scope, size)

    if (scope == "global")
      case type
      when "int"
      
        @globalInt += size.to_i
        return @globalInt - size.to_i
      when "float"
        @globalFloat += size.to_i
        return @globalFloat - size.to_i
      when "char"
        @globalChar += size.to_i
        return @globalChar - size.to_i
      when "bool"
        @globalBool += size.to_i
        return @globalBool - size.to_i
      end
    elsif (scope == "class")
      return "---"
    else
      case type
      when "int"
        @localInt += 1
        return @localInt - 1
      when "float"
        @localFloat += 1
        return @localFloat - 1
      when "char"
        @localChar += 1
        return @localChar - 1
      when "bool"
        @localBool += 1
        return @localBool - 1
      end
    end
  end

  def get_temp (type)
    case type
    when "int"
      @tempInt += 1
      return @tempInt - 1
    when "float"
      @tempFloat += 1
      return @tempFloat - 1
    when "char"
      @tempChar += 1
      return @tempChar - 1
    when "bool"
      @tempBool += 1
      return @tempBool - 1
    end
  end

  def get_const(type)
    case type
    when "int"
      @constInt += 1
      return @constInt - 1
    when "float"
      @constFloat += 1
      return @constFloat - 1
    when "char"
      @constChar += 1
      return @constChar - 1
    when "bool"
      @constBool += 1
      return @constBool - 1
    end
  end

end
