require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.include?(grade) #if there is no one in this grade yet in the roster
      @roster[grade] = [name]
    else #if there is already someone in this grade already
      @roster[grade] << name
    end
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k, v|
      v.sort!
    end
    @roster
  end


end# code here!
