class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grade)
    #@roster[grade] = []
    if @roster[grade] == nil
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.each do |grade,students|
      @roster[grade] = students.sort
    end
    @roster.sort.to_h
  end
end
