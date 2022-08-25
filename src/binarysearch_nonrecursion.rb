def read_file()
    # read from seed.txt
    fileobject = File.readlines('seed.txt')
    fileobject
end



def binary_search(arr, number)
  initial = 0
  last = arr.length - 1
  while initial <= last
    mid = (initial+last)/2
    # puts " if #{initial} and #{last} and #{mid} and #{arr[mid]}"
    if arr[mid].chomp.to_i == number
      return mid
    elsif arr[mid].chomp.to_i < number
      initial = (mid+1)
      mid = (initial+last)/2
      # puts " elsif #{initial} and #{last} and #{mid} and #{arr[mid]}"
      # puts "elsif-1 :#{initial} and #{last} and #{mid}"
    else
      last = (mid-1)
      mid = (initial+last)/2
      # puts " elsif-2 #{initial} and #{last} and #{mid} and #{arr[mid]}"
      # puts "elsif-2 :#{initial} and #{last} and #{mid}"
    end
  end
  -1
end
arr = read_file
numbers = [-8, 9, 3300, 19999, 1989585, 9964879, 274993744, 5000000000,5000000564]
numbers.each do |number|
  start_time = Time.now
  index = binary_search(arr,number)
  duration = (Time.now - start_time).round(4)
  if (index != -1)
    puts "The given number #{number} is found at the index #{index} at #{duration} seconds."
  else
    puts "The given number #{number} is not found at #{duration} seconds." 
  end
end






