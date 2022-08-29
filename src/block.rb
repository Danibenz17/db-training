class Util
  def self.map(arr)
    result = []
    for ele in arr
      v = block_given? ? yield(ele) : ele
      result << v
    end
    result
  end
end
class Students
  attr_reader :college, :id, :branch, :section, :name, :aadhar_no, :pan_no, :pincode
  def initialize(college, id, branch, section, name, aadhar_no, pan_no, pincode)
    @college = college
    @id = id
    @branch = branch
    @section = section
    @name = name
    @aadhar_no = aadhar_no
    @pan_no = pan_no
    @pincode = pincode
  end
end
ann = Students.new('arcas', 19_106_001, 'bcs_cs', 'section_A', 'Ann', 14_881_564, 'GOBD1727J', 641_037)
ben = Students.new('arcas', 19_106_002, 'bcs_cs', 'section_A', 'Ben', 14_881_575, 'GOBE1727K', 641_039)
cindy = Students.new('arcas', 19_106_003, 'bcs_cs', 'section_A', 'Cindy', 14_881_583, 'GOBG1727O', 641_045)
robin = Students.new('arcas', 19_106_004, 'bcs_cs', 'section_A', 'Robin', 14_881_599, 'GOBJ1727S', 641_055)
arr = [ann, ben, cindy, robin]
answer = Util.map(arr, &:name)
print answer