class Array
  def liked_spots(input)
    result = 0
    each_cons(2) { |a| result += 1 if a.reduce(:+).odd? || a[0].even? == input.even? }
    result
  end
end
