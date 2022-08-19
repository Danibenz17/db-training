def find(arr, number)
      if number < 0
        return -1
      elsif
        number > arr.last.chomp.to_i
        return -1
      else
        for i in 0..(arr.length-1) do 
          # returns index if found  
          return i if arr[i].chomp.to_i == number
          break if arr[i].chomp.to_i > number
        end
      end
        # returns -1 if not found
      -1
    end 
    