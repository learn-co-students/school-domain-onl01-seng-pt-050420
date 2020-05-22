# code here!
class School
    attr_accessor :roster  
    def initialize(school_name)
       #@name = school_name
        @roster = {}
    end
    def add_student(student, grade)
        @roster[grade]=[] if @roster[grade].nil?
        @roster[grade] << student

    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade, students|
            students.sort!
        end

    end

end