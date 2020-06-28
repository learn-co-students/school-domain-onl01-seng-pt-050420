class School

    attr_accessor :roster

    def initialize(school_name)
        @name = school_name 
        @roster = {}
    end 

    def add_student(name, grade)
       if @roster[grade].nil?
        @roster[grade] = []
       end 
        @roster[grade] << name 
    end 

    def grade(grade)
        @roster[grade]
    end  

    def sort
        # @roster.each {|grade, students| students.sort!}
        @roster.each {|grade, students| @roster[grade] = students.sort}
    end 
end