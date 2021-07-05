# # code here!
# class AutoPlant
  
#   take_inventory
# #   paint_cars
  
#   class School
   
    
#     def initialize(school)
#       @school = school
#       @roster = {}
#     end
    
#   def add_student(name, grade)
#     @name = name
#     @grade = grade
#     @roster 
#   end
# end

class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end


  # def roster
  #   @roster
  # end

  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
