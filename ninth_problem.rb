def find_triplet(num)
  c = num

  while c > num / 3
    a = 1

    while a < num / 3
      if num - c < a
        break
      end

      if a**2 + (num - c - a)**2 == c**2
        return a * c * (num - c - a)
      end
      a += 1
    end
    c -= 1
  end
end
