class Util
  def self.process(arr)
    result = []
    for e in arr
      yield(result, e)
    end
    result
  end

  def self.map(array)
    process(array) { |result, e|
      result << yield(e)
    }
  end

  def self.select(arr)
    process(arr) { |result, e|
      result << e if yield(e)
    }
  end

  def self.max_by(arr)
    result = process(arr) { |result, e|
      if result.length == 0
        result << e
      elsif (result[0] <=> e) == -1
        result[0] = e
      end
    }
    result[0]
  end
  def self.find(arr)
    result = process(arr) {|result, e|
      result << e if yield(e) 
    }
    result[0]
  end
end

class Students
  attr_reader :id, :college, :branch, :section, :roll_no, :name, :aadhar_no, :pan_no, :pincode

  def initialize(id, college, branch, section, roll_no, name, aadhar_no, pan_no, pincode)
    @id = id
    @college = college
    @branch = branch
    @section = section
    @roll_no = roll_no
    @name = name
    @aadhar_no = aadhar_no
    @pan_no = pan_no
    @pincode = pincode
  end
end

ann = Students.new(19_106_001, 'arcas', 'bsc_cs', 'section_A', 0o1, 'Ann', 112_536_654_858, 'BHVHG4851J', 654_425)
ben = Students.new(19_106_002, 'arcas', 'bsc_cs', 'section_A', 0o2, 'Ben', 458_522_664_488, 'BSDEF4851J', 652_215)
cindy = Students.new(19_106_003, 'arcas', 'bsc_cs', 'section_A', 0o3, 'Cindy', 552_536_654_858, 'BHVNN4851J', 633_218)
sana = Students.new(19_106_004, 'arcas', 'bsc_cs', 'section_A', 0o4, 'Sana', 872_536_654_858, 'BSDFC4851J', 659_415)

array = [ann, ben, cindy, sana]
result = Util.map(array) { |i| i.name }
print result

# select
arr = 20.times.to_a
result = Util.select(arr) { |i| i.even? }
print result

# max_by
arr = 20.times.to_a
result = Util.max_by(arr) { |i| i }
puts result

#find
arr = 20.times.to_a
number = 11
result = Util.find(arr){|ele| ele == number}
print result