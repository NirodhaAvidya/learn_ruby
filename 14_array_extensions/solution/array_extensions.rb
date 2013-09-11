class Array

  def sum
    out = 0
    self.each{|e| out += e }
    out
  end

  def square
    self.count > 0 ? self.map{|e| e ** 2} : self
  end

  def square!
    self.count > 0 ? self.map!{|e| e ** 2} : self
  end

end
