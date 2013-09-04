def reverser
  yield.split.map{|e|e.reverse}.join(" ")
end

def adder(x=1)
  yield+x
end

def repeater(x=1)
  x.times{yield}
end
