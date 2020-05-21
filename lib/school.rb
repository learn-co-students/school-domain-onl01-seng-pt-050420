# code here!
#school = School.new("Bayside High School")
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name=name
    @roster = {}
  end
  
  def add_student(studentname,grade)
    roster[grade] ||=[]
    roster[grade] << studentname
  end

def grade(grade)
  roster[grade]
end

  def sort
    roster.collect do |grade, studentnames|
    roster[grade] = studentnames.sort
      end
   roster
   end
 end
