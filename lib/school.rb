class School
    
    attr_reader :school, :roster
    def initialize(school)
        @school = school
        @roster = {}

    end
    
    def add_student(name, grade)
         
        
        if @roster[grade]
           @roster[grade] << name

        else
            @roster[grade] = []
            @roster[grade] << name 

        end
        
        



    end        

    def grade(name)
        @roster[name]


    end

    def sort
        @roster.each do |grade, name|
           @roster[grade] = name.sort
        end
    end


    


end
