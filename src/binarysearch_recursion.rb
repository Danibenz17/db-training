def binary_search(students, name, initial = 0, last = students.length - 1)
  if initial > last
    return -1
  end
  mid = (initial + last) / 2
  case name <=> students[mid]
  when 1
    initial = mid + 1
    binary_search(students, name, initial, last)
  when -1
    last = mid - 1
    binary_search(students, name, initial, last)
  else
    return mid
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

puts "Binary Search Works For Numbers!!!"

students = ["abi", "anish", "benson", "jack", "karthik", "rathish", "sam", "shree" "varun", "varshini"]

students.each_with_index do |name, i|
  if(i != binary_search(students, name))
    raise "Error: Failed to correctly find #{name}"
  end
end

students.each_with_index do |name, i|
  if(i != binary_search(students, name))
    raise "Error: Failed to correctly find #{name}"
  end
end

# out of range
['aarthi', 'zahir'].each do |name|
  if(-1 != binary_search(students, name))
    raise "Error: Did not return -1 for number #{name}"
  end
end


# In Range, non-existent
['sathish', 'hari'].each do |name|
  if(-1 != binary_search(students, name))
    raise "Error: Did not return -1 for number #{name}"
  end
end

puts "Binary Search Works For Strings!!!"
