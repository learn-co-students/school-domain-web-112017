require 'pry'
class School


  def initialize(str)
    @roster = {}
  end

  attr_accessor :roster

  def add_student(name, grade) #{9 => ["Homer Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"], 7 => ["Blake Johnson"]}
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @sorted_roster = @roster.sort.each do |k,v|
      @roster[k] = v.sort
    end
    @roster
  end

end
