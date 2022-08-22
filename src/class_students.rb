class Students
    def initialize(name ,age ,dob, rollno, pincode)
    @name = name
    @age = age
    @dob = dob
    @rollno = rollno
    @pincode = pincode
    end
    def display_data()
    puts @name, @age, @dob, @rollno, @pincode
    end
end
student1 = Students.new("Danish", 21, "01-03-2001", 19106001, 641037)
student2 = Students.new("Rathish", 23, "10-07-1997", 19106002, 641045 )
student3 = Students.new("sathish", 24, "12-10-1996", 19106003, 641001)
student1.display_data()
student2.display_data()
student3.display_data()