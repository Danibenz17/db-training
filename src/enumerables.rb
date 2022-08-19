data = [
  {:id=>0, :tamil=>57, :english=>54, :maths=>23, :science=>63, :social=>62}, 
  {:id=>1, :tamil=>63, :english=>75, :maths=>92, :science=>19, :social=>85}, 
  {:id=>2, :tamil=>41, :english=>14, :maths=>4, :science=>13, :social=>48}, 
  {:id=>3, :tamil=>18, :english=>70, :maths=>77, :science=>24, :social=>55}, 
  {:id=>4, :tamil=>53, :english=>63, :maths=>72, :science=>2, :social=>23}
]

subjects = [:tamil, :english, :maths, :science, :social]

# { tamil: 23, english: 54, ...}

subjects.reduce({}) { |result, subject|
  max_mark = data.map{ |student| student[subject] }.max
    
}

result = {}
weights = {maths: 1.2, english: .9, tamil: .8, computers: 1}
subjects = %i{tamil english maths computers}
max_marks = [
  ['swathi', 98, 100, 80, 90],
  ['Varun', 88, 99, 96, 91],
  ['Iqbal', 70, 100, 70, 99]
]

# (tamil * .8 + english * .9 + maths * 1.2 + computers * 1) / 4

max_marks.map { |marks|
  # record = {}
  # 4.times do |i|
  #   record[subjects[i]] = marks[i]
  # end
  # record

  Hash[subjects.zip(marks)]
}

# {name: 'swathi', tamil: 98....}
subjects.unshift(:name)
puts marks_db.map { |marks| Hash[subjects.zip(marks)]}






[
  {tamil: 98, english: 100, maths: 80, computers: 90},
  ..
  ..
]


subjects = [:tamil, :english, :maths, :science, :social]
# subject[:tamil]=52
subject = {}
subject[subjects[0]] = 52

{tamil: 52}

result = {}
weights = {tamil:0.8, english:0.9, maths:1.2, computers:1}
subjects = %i{tamil english maths computers}
marks_db = [
  ['swathi', 98, 100, 80, 90],
  ['Varun', 88, 99, 96, 91],
  ['Iqbal', 70, 100, 70, 99]
]


result = {}
 weights = {tamil: 0.8, english: 0.9, maths: 1.2, computers: 1}
subjects = %i{tamil english maths computers}

marks_db = [
  ['swathi', 98, 100, 80, 90],
  ['Varun', 88, 99, 96, 91],
  ['Iqbal', 70, 100, 70, 99]
]
subjects_with_name = subjects.clone.unshift(:name)
record = marks_db.map do |marks| 
  record = Hash[subjects_with_name.zip(marks)]
  weighted_sum = weights.sum { |subject, weight| record[subject] * weight }



  def fib(number)
  result = [0,1]
  (number-2).times do
    result << result[-1] + result[-2]
  end
  return result
end
 puts fib(10)
     
 

number = rand(10)
10.times do |i|
  puts number.uniq
  number = number + rand(10)
end
