def even_fibonacci(arg)
  first = 1
  second = 2
  sum = 0

  while second <= arg
    if second.even? == 0
      sum += second
    end

    first, second = second, first + second
  end
  sum
end

puts even_fibonacci(4000000)
