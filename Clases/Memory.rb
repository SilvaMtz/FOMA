class Memory

  attr_accessor :globalInt, :globalFloat, :globalChar, :globalBool, :localInt, :localFloat, :localChar, :localBool, :temps

  def initialize ()
    @globalInt = 1_000
    @globalFloat = 2_000
    @globalChar = 3_000
    @globalBool = 4_000
    @localInt = 5_000
    @localFloat = 6_000
    @localChar = 7_000
    @localBool = 8_000
    @temps  = 10_000
  end

  def reset
    @globalInt = 1_000
    @globalFloat = 2_000
    @globalChar = 3_000
    @globalBool = 4_000
    @localInt = 5_000
    @localFloat = 6_000
    @localChar = 7_000
    @localBool = 8_000
  end

  def get_mem (type, scope)
    if (scope == "global")
      case type
      when "int"
        @globalInt += 1
        return @globalInt - 1
      when "float"
        @globalFloat += 1
        return @globalFloat - 1
      when "char"
        @globalChar += 1
        return @globalChar - 1
      when "bool"
        @globalBool += 1
        return @globalBool - 1
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

  def get_temp
    @temps += 1
    return @temps - 1
  end

end
