# code here!
require 'pry'
class School

  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end


  def add_student(name, grade)
    @roster[grade] != nil ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |k, v| v.sort! }
  end


end
