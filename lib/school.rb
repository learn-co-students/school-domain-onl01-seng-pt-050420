class School
  
  attr_accessor :roster
  

def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    
  @roster[grade] = [] if  @roster[grade].nil?
  @roster[grade].push(name)
end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
  end
  end
  @roster 
end
