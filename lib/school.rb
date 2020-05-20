class School 
  attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student, grade)
  @roster[grade] ||= []
  @roster[grade] << student
end 

def grade(grade)
  @roster[grade]
end 

def sort
  @roster.each do |grade, array_of_names|
    array_of_names.sort!
  end 
  @roster
end 
end 