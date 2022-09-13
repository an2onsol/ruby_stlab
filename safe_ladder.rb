class Ladder
  def initialize(*input)
    @size = input[0].size
    @ladder = input
  end

  def safe?
    index = space = space_prev = 0
    # The ladder has to be at least 5 characters wide
    return false if @size < 5

    while index < @ladder.size
      segment = @ladder[index]
      count = segment.count('#')

      if count == @size
        # The distance between rungs of the ladder cannot be greater than 2 characters
        return false if space > 2

        # Rungs must be evenly spaced apart
        return false if space_prev != space && space_prev.nonzero?

        space_prev = space if index != 1
        space = 0
      elsif count == 2 && segment[0] == segment[@size - 1]
        space += 1
      else
        return false
      end
      index += 1
    end
    true
  end
end
