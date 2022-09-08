def sum_square_diff(num)
  square_of_sum = ((1 + num) * num / 2)**2
  sum_of_squares = (1..num).inject { |sum, n| sum + n**2}
  square_of_sum - sum_of_squares
end
