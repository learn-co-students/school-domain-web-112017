require "pry"

class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    # binding.pry
    sorted = {}
    roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end
end


# attr_accessor :roster
# # attr_reader :name, :grade
#
# def initialize(roster)
#   @roster = {}
# end
#
# def name=(name)
#   @name = name
# end
#
# def grade=(grade)
#   @grade = grade
# end
#
# def add_student(name, grade)
#   if @roster.keys.include?(grade)
#     @roster[grade] << name
#   else
#     @roster[grade] = []
#     @roster[grade] << name
#   end
#   @roster
# end
#
# def grade(num)
#   @roster[num]
# end
#
# def sort
#   @roster.each do |k, v|
#     v.sort!
#   end
# end
