# Uses sieve of Eratosthenes
def sum_of_primes(num)
  array = (0..num).to_a
  array[1] = 0
  prime = 2

  while prime <= num
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

    prime += 1
  end
  return array.reduce(:+)
end

puts sum_of_primes(10)
puts sum_of_primes(2000000)
