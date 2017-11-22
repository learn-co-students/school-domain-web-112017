class School

  attr_accessor :name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if self.roster[grade]
      self.roster[grade] << student_name
    else
      self.roster[grade] = [student_name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, student_array|
      self.roster[grade] = student_array.sort
    end
  end
end
