def smallest_multiple(first_num, second_num)
  deviders = Array.new

  for num in (first_num..second_num)
    i = 1
    deviders.each { |d| num /= d if num % d == 0}
    while num != 1
      if num % i == 0
        num /= i
        deviders << i
      end
      i += 1
    end
  end
  deviders.reduce(1, :*)
end
