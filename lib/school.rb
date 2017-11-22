# code here!
require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ? @roster[grade]<<name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = Hash[@roster.sort_by {|key,val| key}]
    sorted.values.each do |students|
      students.sort!
    end
    sorted
  end

end
