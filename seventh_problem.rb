# Uses sieve of Eratosthenes to find prime number
def find_prime(num)
  array = (0..num - 1).to_a
  prime = 2
  i = 1

  while i < num
    j = 2 * prime

    # find composite numbers
    while j < array.size
      array[j] = 0
      j += prime
    end

    # find next prime number
    while array[prime + 1] == 0
      prime += 1
    end

    # increase size of array
    if prime + 1 >= array.size
      array = array + (array.size..(2 * array.size) - 1).to_a
      i = 0
      prime = 2
    else
      prime += 1
      i += 1
    end
  end
  return prime
end

puts find_prime(1)
puts find_prime(5)
puts find_prime(10)
puts find_prime(20)
puts find_prime(10001)
