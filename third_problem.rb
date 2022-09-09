MIN_PRIME = 2

def prime_factor(num)
  if num < MIN_PRIME
    raise ArgumentError, 'Input value lower than 2'
  end

  factor = MIN_PRIME
  while num != 1
    if (num % factor).zero?
      num /= factor
    else
      factor += 1
    end
  end
  factor
end
