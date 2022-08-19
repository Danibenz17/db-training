def fib(number)
      num1=0
      num2=1
      result=[num1,num2]
      (number-2).times do |n|
        buff = num1 + num2
        result<<buff
        num1 = num2 
        num2 = buff
      end
      return result
    end
    puts fib(20)

    #another method
    def fib(number)
          result = [0,1]
          (number-2).times do
            result << result[-1] + result[-2]
          end
          return result
        end
         puts fib(10)