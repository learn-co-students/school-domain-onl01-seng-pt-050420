# code here!
class School

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
        if @roster[grade]
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
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end

end