def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(ary)
  case
    when ary.count == 0 then 0
    when ary.count == 1 then ary[0]
    when ary.count > 1 then ary.inject{|x,y|x+y}
  end
end

def multiply(ary)
  case
    when ary.count == 0 then 0
    when ary.count == 1 then ary[0]
    when ary.count >1 then ary.inject(1){|x,y|x*y}
  end
end

def power(x,y)
  x**y
end

def factorial(x)
  case
    when x == 0 then 0
    when x != 0 then (1..x).inject(1){|x,y|x*y}
  end
end

