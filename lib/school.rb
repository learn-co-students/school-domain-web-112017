# code here!
class School

  attr_reader :name


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
        @roster[grade] = []
    end
    @roster[grade] << name
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
        students.sort! {|x,y| x<=>y}
    end
    @roster
  end

end
