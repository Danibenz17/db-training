def binary_search(arr, num, initial=0, last=arr.length-1)
  if initial > last
    return -1
  end
  mid = (initial + last) / 2
  if arr[mid] == num
     mid
  elsif arr[mid] < num
    initial = mid+1
    binary_search(arr, num, initial, last)
  else
    last = mid-1
    binary_search(arr, num, initial, last)
  end
end

arr = [5, 7, 11, 13, 15, 16, 21, 23, 25, 30]

arr.each_with_index do |n, i|
  if(i != binary_search(arr, n))
    raise "Error: Failed to correctly find #{n}"
  end
end

# out of range
[4, 32].each do |n|
  if(-1 != binary_search(arr, n))
    raise "Error: Did not return -1 for number #{n}"
  end
end


# In Range, non-existent
[17, 8, 22, 27].each do |n|
  if(-1 != binary_search(arr, n))
    raise "Error: Did not return -1 for number #{n}"
  end
end

puts "Binary Search Works!!!"