class School
  attr_reader :school, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(name,grade)
    @roster[grade] ||= [] # double pipe operator bc "If any of the two operands are non zero, then the condition becomes true."
    @roster[grade] << name
  end
  
  def grade(hs_grade)
    @roster[hs_grade]
  end
  
  def sort
    sorted_array = {}     # I assume we're being asked to iterate over a hash
    @roster.each do |grade, student_name|
      sorted_array[grade] = student_name.sort     
      # '.sort' bc we want the array to be in alphabetical order
    end
  
    sorted_array     #always gotta call it!
    
  end
  
end