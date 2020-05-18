# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(num)
    @roster[num]
  end
  def sort 
    done = {}
    @roster.each do |grade, student|
      done[grade] = student.sort 
    end
    done
  end
  
end