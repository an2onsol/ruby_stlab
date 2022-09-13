class Array
  def liked_spots(input)
    size = self.size
    i = 0
    j = 1
    result = 0

    while j < size
      sum = self[i] + self[j]

      if sum.odd?
        result += 1
      elsif self[i].even? == input.even?
        result += 1
      end

      i += 1
      j += 1
    end
    result
  end
end
