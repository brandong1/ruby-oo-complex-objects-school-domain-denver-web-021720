class School
    attr_accessor :name, :roster

    def initialize(name)
        @roster = {}
        @name = name
    end

    def add_student(student_name, grade)
        roster[grade] ||= [] # a ||= b.. This means, if roster[grade] is undefined then assign it the value of an empty array, otherwise leave it alone. Stack overflow.
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    # def sort_students
    # #     sorted_students_by_grade = {}
    # #     roster.each do |grade, students|
    # #         sorted_students_by_grade[grade] = students.sort
    # #     end
    # #     sorted_students_by_grade
    # # end
    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end
end