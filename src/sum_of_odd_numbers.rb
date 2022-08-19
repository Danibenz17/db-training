def sum_odd(n)
    if n == 1
      return 1
    else
      return (2*n)-1 + sum_odd(n-1) 
    end
  end
  puts sum_odd(8)

  #finding the given number odd or not
  def odd(number)
      if number % 2 != 0
        return true
      else
        false
      end
    end
    puts odd(12)