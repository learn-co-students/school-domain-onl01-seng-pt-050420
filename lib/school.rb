class School
  attr_reader :school, :roster
  
  def initialize(school)
    @school = school 
    @roster = {}
  end
    
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade_students)
    @roster[grade_students]
  end
  
  def sort 
    sorted_roster = {}
    @roster.map do |grade, student|
      sorted_roster[grade] = student.sort
    end
    sorted_roster
  end
end