# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  #returns whole roster
  def roster
    @roster
  end

  #Returns roster of a grade
  def grade(grade)
    @roster[grade]
  end

  #Add student when called
  def add_student(name, grade)
    #check if empty
    if roster[grade] != nil
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def sort
    @roster.each do |hash_key, hash_value|
      #sort and store in hash with !
      hash_value.sort!
    end
  end
end
