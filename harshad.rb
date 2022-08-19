def is_harshad?(number)
  remainder = number % 10
  quotient = number / 10
  sum = 0 
  sum+=remainder
  while quotient > 9 do 
    remainder = quotient % 10
    quotient = quotient / 10
    sum+remainder
  end
  sum+quotient
  if number%sum == 0
    true
  else
    false
  end
end
number = 6806
if(is_harshad?(number))
  puts"The given number #{number} is a Harshad number"
else
  puts"The given number #{number} is not a Harshad number"
end

#harshad number with recursion

def sum_of_digits(num)
  if num > 0
    return (num%10) + sum_of_digits(num/10)
  else
    return 0
  end
end
def is_it_harshad?(num)
  if num % sum_of_digits(num) == 0
    return true
  else
    false
  end 
end



