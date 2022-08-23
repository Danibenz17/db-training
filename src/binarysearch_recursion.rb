a = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]
def binary_search(objects, search_obj, low = 0, high = objects.length - 1)
  mid = ( high - low + 1 )/2 + low
  return -1 if low > high
  case objects[mid] <=> search_obj
  when 0
    return mid
  when -1
    low = mid + 1 
    return binary_search(objects, search_obj, low, high)
  else
    high = mid - 1
    return binary_search(objects, search_obj, low, high)
  end
end 

arr = [10, 11, 13, 14, 17, 21, 23, 27, 29, 30]

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
[1, 8, 22, 2].each do |n|
  if(-1 != binary_search(arr, n))
    raise "Error: Did not return -1 for number #{n}"
  end
end

puts "Binary Search Works for numbers!!!"



names = ["abi", "anish", "benson", "jack", "karthik",
           "rathish", "sam", "shree" "varun", "varshini"]

names.each_with_index do |n, i|
  if(i != binary_search(names, n))
    raise "Error: Failed to correctly find #{n}"
  end
end
  
# out of range
['aarthi', 'zahir'].each do |n|
  if(-1 != binary_search(names, n))
    raise "Error: Did not return -1 for number #{n}"
  end
end
  
  
# In Range, non-existent
['sathish', 'hari'].each do |n|
  if(-1 != binary_search(names, n))
    raise "Error: Did not return -1 for number #{n}"
  end
end

   
puts "Binary Search Works for strings!!!"

class Student
  attr_reader :name, :age, :dob, :rollno, :pincode
  def initialize(rollno, name, age, dob, pincode)
    @rollno = rollno
    @name = name
    @dob = dob
    @age = age
    @pincode = pincode
  end

  def <=> (rhs)
    self.rollno <=> rhs.rollno
  end
end 

students_data = [
  [1, "Ann", 19, "19/09/2003", 643112], 
  [2, "Ben", 22, "02/05/2000", 643551], 
  [3, "Dani", 21, "06/03/2001", 643155], 
  [5, "Deb", 24, "07/07/1998", 643142], 
  [6, "Jo", 21, "19/09/2001", 643889], 
  [7, "Jeny", 25, "04/11/1997", 643209],
  [9, "Peter", 24, "10/11/1998", 641037],
  [10, "Paul", 22, "19/09/2000", 641077],
  [11, "Sam", 20, "25/12/2002", 641097],
]
students = students_data.map { |st|
  Student.new(st[0], st[1], st[2], st[3], st[4])
}

students.each_with_index do |student, i|
  if(i != binary_search(students, student))
    raise "Error: Failed to correctly find #{student}"
  end
end
  
# out of range
[0, 32].each do |student|
  student = Student.new(0, "spider", 22, "10/12/12", 641223)
  if(-1 != binary_search(students, student))
    raise "Error: Did not return -1 for number #{student}"
  end
end
  
  
# In Range, non-existent
[4, 8].each do |student|
  student = Student.new(4, "mark", 23, "10/12/1998", 641276)
  if(-1 != binary_search(students, student))
    raise "Error: Did not return -1 for number #{student}"
  end
end

puts "Binary Search Works for students!!!"
