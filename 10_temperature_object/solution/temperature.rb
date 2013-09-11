class Temperature
attr_accessor :c, :f

  def self.from_celsius(degrees_celsius)
    new(:c => degrees_celsius)
  end

  def self.from_fahrenheit(degrees_fahrenheit)
    new(:f => degrees_fahrenheit)
  end

  def initialize opts
    @degrees_fahrenheit = opts[:f] || opts[:c] * (9.0/5) + 32
  end

  def in_fahrenheit
    @degrees_fahrenheit
  end

  def in_celsius
    ((@degrees_fahrenheit-32.0)*5)/9
  end

  def ftoc(f)
    ((f-32.0)*5)/9
  end

  def ctof(c)
    ((c*9.0)/5)+32
  end

end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end
