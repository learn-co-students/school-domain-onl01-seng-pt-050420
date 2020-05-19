require 'pry'

class School

attr_accessor :roster, :school
  
  def initialize(school_name)
    @school = school_name
    @roster = {}
  end
  
  def add_student(full_name, grade)
    if @roster[grade] 
      @roster[grade] << full_name
    else
      @roster[grade] = []
      @roster[grade] << full_name
    end
  end 
  
  def grade(grade_number)
    self.roster[grade_number]
  end
  
  def sort
    sorted_grades = @roster.sort.to_h
    sorted_grades.each do |grade, student|
      sorted_grades[grade] = student.sort
    end
    sorted_grades
  end
end
