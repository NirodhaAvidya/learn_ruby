def reverser
  yield.split.map{|e|e.reverse}.join(" ")
end

# If you prefer the long version:
  # def reverser
  #  word_array = yield.split
  #  backwards_array = []
  #  word_array.map do |e|
  #    backwards_array << e.reverse
  #  end
  #  result = backwards_array.join(" ")
  #  return result
  # end

def adder(x=1)
  yield+x
end

def repeater(x=1)
  x.times{yield}
end
