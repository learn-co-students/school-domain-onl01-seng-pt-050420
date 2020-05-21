class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade].push(student)
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each {|grade, students| 
    @roster[grade] = students.sort
    }
  end
  
  
end