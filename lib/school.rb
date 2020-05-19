# code here!
class School
  
  attr_accessor :name, :roster
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
      @roster[grade].push(name)
    else
      @roster[grade].push(name)
    end
  end
  
  def grade(grade)
    
    @roster.detect do |key, value|
      if (key == grade)
        return value
      end
    end
    
  end
  
  def sort
    
    hash = {}
    @roster.each do |key, value|
      hash[key] = value.sort
    end
    
    return hash
    
  end
  
end