# code here!
class School

  attr_reader :roster

  def initialize(school_name)
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster[student_grade]
      @roster[student_grade] += [student_name]
    else
      @roster[student_grade] = [student_name]
    end
  end

  def grade (student_grade)
    @roster[student_grade]
  end

  def sort
    new_roster = @roster.sort_by { |grade, students| grade}
    final_roster = {}
    new_roster.each do |grade, students|
      final_roster[grade] = students.sort!
    end
    final_roster
  end


end
