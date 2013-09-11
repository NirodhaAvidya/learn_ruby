def measure(i = 1)
  total = 0

  i.times do
    start = Time.now
      yield
    stop = Time.now
    total += stop - start
  end

  total / i
end
