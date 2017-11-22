# code here!
class School
  attr_reader :name

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(student, num)
    if @roster[num]
      @roster[num] << student
    else
      arr = []
      arr << student
      @roster[num] = arr
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_hash = {}
    @roster.each do |k, v|
     new_hash[k] = v.sort
    end
    new_hash
  end
end
