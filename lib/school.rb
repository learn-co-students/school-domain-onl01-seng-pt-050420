# code here!
class School
    attr_accessor
    attr_reader :roster

    # initialized with a name.
    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= [] # does this exist?
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster_hash = {}
        roster.each do |grade, student|
            roster_hash[grade] = student.sort
        end
        roster_hash
    end
end