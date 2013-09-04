class RPNCalculator
  attr_accessor :stack, :oper

  class CalculatorError < RuntimeError
  end

  def initialize
    @stack ||= [0]
    @oper ||= []
  end

  def push(n)
    stack << n
  end

  def plus
    raise "calculator is empty" if stack.size < 2
    oper = []
    oper << stack.pop
    oper << stack.pop
    @result = oper.inject{|x,y| x+y }
    stack << @result
  end

  def minus
    raise "calculator is empty" if stack.size < 2
    oper = []
    oper << stack.pop
    oper << stack.pop
    @result = oper.inject{|x,y| y-x }
    stack << @result
  end

  def divide
    raise "calculator is empty" if stack.size < 2
    oper = []
    oper << stack.pop
    oper << stack.pop
    @result = oper.inject{|x,y| y.to_f/x }
    stack << @result
  end

  def times
    raise "calculator is empty" if stack.size < 2
    oper = []
    oper << stack.pop
    oper << stack.pop
    @result = oper.inject(1){|x,y| y*x }
    stack << @result
  end

  def value
    @result
  end

  def tokens(str)
    str.split.collect{|e| e =~ /\d/ ? e.to_i: e.to_sym  }
  end

  def evaluate(str)
    ary = str.split(//)

  end

end
