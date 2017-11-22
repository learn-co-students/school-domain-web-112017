require "pry"
# code here!
class School
  attr_accessor :roster, :student, :grade
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
      @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.each { |key, value| value.sort!{|a,b| a <=> b }}.sort.to_h
  end

end
