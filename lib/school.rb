class School
  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student (student, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade (grade_level)
    @roster[grade_level]
  end

  def sort
    sorted_list = {}
    @roster.each do |grade_hash, student_array|
      sorted_list[grade_hash] = student_array.sort
    end
    sorted_list
  end
end
