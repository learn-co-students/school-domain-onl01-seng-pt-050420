class School

  attr_accessor :roster, :student

  def initialize(school_name)
    @name = school_name
    @roster = { }             # initializing an empty hash
  end

  def add_student(name, grade)
    if @roster[grade].nil? #if roster gets nil
      @roster[grade] = [ ]
    end
    @roster[grade].push(name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort! #the bang sorts in place
    end
    @roster
  end

end
