
class School
 attr_accessor :roster

 def initialize(name)
 	@name = name
 	@roster = {}
 end

def add_student(student_name, grade)
	if @roster.has_key?(grade) 
		@roster[grade] << student_name
	else
		@roster[grade] = []
		@roster[grade] << student_name
	end
end

def grade(gr_num)
	@roster[gr_num]
end

def sort
	sorted_grade = @roster.sort_by {|grade| grade}
	new_roster = {}
	sorted_grade.collect do |grade,name|
		new_roster[grade] = name.sort
	end
	new_roster
end

		
end
