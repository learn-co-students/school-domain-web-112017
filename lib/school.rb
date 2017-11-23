# code here!
class School
  attr_accessor :student, :name, :roster
  def initialize(name)
    @roster = {}
    @name = name
  end
  def add_student(student, grade)
    @student = student
    if @roster.include? grade
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |(grade, students), hash|
      hash[grade] = students.sort
    end
    # @roster.each do |grade, students|
    #   @roster[grade] = students.sort
    # end
    # @roster
  end
end
