require "pry"

class School

  attr_accessor :roster
  # attr_reader :name, :grade

  def initialize(roster)
    @roster = {}
  end

  def name=(name)
    @name = name
  end

  def grade=(grade)
    @grade = grade
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      # binding.pry
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    @roster
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |k, v|
      v.sort!
    end
  end

end
