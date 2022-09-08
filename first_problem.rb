def multiples(num)
  last_three = last_five = last_fifteen = num - 1

  while last_three % 3 != 0
    last_three -= 1
  end
  while last_five % 5 != 0
    last_five -= 1
  end
  while last_fifteen % 15 != 0
    last_fifteen -= 1
  end

  sum_three = (3 + last_three) * last_three / 6
  sum_five = (5 + last_five) * last_five / 10
  sum_fifteen = (15 + last_fifteen) * last_fifteen / 30

  sum_five + sum_three - sum_fifteen
end
