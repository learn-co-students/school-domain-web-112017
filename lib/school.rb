# code here!
class School

attr_reader :name, :roster, :add_student, :grade, :sort


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade_num)
    if self.roster.key?(grade_num)
      self.roster[grade_num]<< name
    else
      self.roster[grade_num] = []
      self.roster[grade_num] << name
    end
  end

  def grade(grade_num)
    self.roster[grade_num]
  end

  def sort
    self.roster.map do |grade, students|
      students.sort!
    end
    self.roster.sort_by do |grade, students|
      grade
    end.to_h

  end

end
