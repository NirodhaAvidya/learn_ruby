def measure iter=1
  total = 0
  iter.times do
    start = Time.now

    yield

    end_time = Time.now
    total += end_time - start
  end
  total / iter
end
