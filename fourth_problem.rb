def largest_palindrome
  a = 999
  max_palindrome = 0

  while a > 100
    b = a
    while b > 100
      m = a * b
      if m.to_s.reverse == m.to_s && m > max_palindrome
          max_palindrome = m
      end
      b -= 1
    end
    a -= 1
  end
  return max_palindrome
end

puts largest_palindrome