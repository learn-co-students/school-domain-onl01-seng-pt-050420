class School
  attr_accessor :name, :roster, :grades
  # attr_reader 
  
  # hash = {}

  def initialize(name)
    @roster = {}
    @name = name
    # @grades =
  end
  
  def add_student(name, grades)
    @roster[grades] ||= []
    if !@roster[grades].include?(name)
      @roster[grades] << name
    end
  end

  def grade(grades)
     @roster[grades]
  end  

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort!
    end 
  end

end
    
    
    