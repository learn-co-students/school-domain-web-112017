# code here!
class School

  attr_reader :roster

  def initialize(school_name)
    @roster = {}
  end

  def add_student(name, grade)
    @roster.keys.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
