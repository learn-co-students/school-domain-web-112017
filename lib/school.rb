require "pry"
class School

attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster[grade] != nil
    @roster[grade].push(name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {
      |grade, roster|
      roster.sort!
    }
  end

end
