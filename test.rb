# code here!
class School
  

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(value,key)
    if @roster.key?(key)
      @roster[key] << value
    else
      @roster[key] =[]
      @roster[key] << value
      @roster
    end
  end
  
  def roster
    @roster
  end
  
  def grade(key)
    @roster[key]
  end
  
  def sort 
    @roster.each do |key, value| 
      puts value
    end
  end
  
  
end





