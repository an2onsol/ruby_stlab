MAX_THREE_DIGIT = 999

def largest_palindrome
  first_factor = MAX_THREE_DIGIT
  max_palindrome = 0

  while first_factor > 100
    second_factor = first_factor
    while second_factor > 100
      product = first_factor * second_factor
      if product.to_s.reverse == product.to_s && product > max_palindrome
        max_palindrome = product
      end
      second_factor -= 1
    end
    first_factor -= 1
  end
  max_palindrome
end

puts largest_palindrome
