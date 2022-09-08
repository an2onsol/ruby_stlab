def prime_factor(num)
  if num < 2
    raise ArgumentError.new "Input value lower than 2"
  end
  factor = 2
  while num != 1
    if num % factor == 0
      num /= factor
    else
      factor += 1
    end
  end
  factor
end
