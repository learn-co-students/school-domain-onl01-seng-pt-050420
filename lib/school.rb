# class School
#   attr_accessor :name, :roster
  
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end 
  
#   def add_student(student, level)
#     # this sort of means #=> a || a = b ... or #=> x || x = y
#     # it's freak'n weird
#     roster[level] ||= []
#     #or if @roaster[level]
#     #@roaster[level] << student_name
#     #else
#     #@roaster[level]
#     roster[level] << student
#   end 
#   end
  
#   def grade(level)
#     roster.detect do |x, y| 
#       if x == level
#         return y 
#       end 
#     end 
#   end 
  
#   def sort 
#   nu_hash = {}
#   roster.each do |x, y| 
#     nu_hash[x] = y.sort 
#   end 
#   nu_hash
# end 
  
# end 


# Simple Solution : dry code

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
  @roster

end

end

 

    
