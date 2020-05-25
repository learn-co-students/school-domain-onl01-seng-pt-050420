class School 
  
  attr_accessor :roster
  
  def initialize(school_name)
    @school_name = school_name 
    @roster = {}
  end
  
  def add_student(student_name, student_grade) 
    if @roster[student_grade].nil?
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end
  
  def grade(grade)
    @roster[grade] 
  end
   
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end