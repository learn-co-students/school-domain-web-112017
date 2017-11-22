# code here!
class School
  attr_accessor :student, :name
  def initialize(name)
    @roster = []
    @name = name
  end
  def add_student(student, int)
    @student = student
    @roster << student
  end
end
