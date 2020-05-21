# code here!
class School

  #attr_reader = :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end 

  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    if @roster[grade] != nil
      @roster[grade]
    end
  end

  def sort
    @roster.map do |key, values|
      values.collect do |array|
        array.sort
      end
    end
    @roster
  end

end