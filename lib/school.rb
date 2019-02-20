class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    attr_reader :name
    attr_accessor :roster

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade (grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, students|
            roster[grade] = students.sort
        end
        roster
    end    
end