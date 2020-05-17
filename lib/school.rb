require 'pry'

class School

    attr_accessor :roster, :name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end


    def add_student(name, grade)
        if roster.has_key?(grade)
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = @roster[grade].sort
        end
        @roster.sort.to_h
    end

end

