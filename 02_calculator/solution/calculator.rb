def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(ary)
  case ary.count
    when 0 then 0
    when 1 then ary[0]
    else ary.inject{|x,y|x+y}
  end
end

def multiply(*args)
  ary = args
  case ary.count
    when 0 then 0
    when 1 then ary[0]
    else ary.inject(1){|x,y|x*y}
  end
end

def power(x,y)
  x**y
end

def factorial(num)
  num == 0 ? 0 : (1..num).inject(1){|x,y|x*y}
end

