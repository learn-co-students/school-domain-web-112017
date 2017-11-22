require 'pry'
class School

attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

def add_student(student_name, grade)
  @roster[grade] ||= []
  @roster[grade] << student_name
end

def grade(num)
  @roster[num]
end

def sort
  sorted = {}
     @roster.each do |grade, students|
       sorted[grade] = students.sort
     end
     sorted
 end
end
