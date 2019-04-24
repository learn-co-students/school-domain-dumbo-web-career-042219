class School
  attr_accessor :roster

  def initialize(school)
    @name = school
    @roster={}
  end

  def add_student(student,grade)
      if @roster[grade]
        @roster[grade] << student
      else
        @roster[grade]=[]
        @roster[grade] << student
      end
  end

  def grade(grade_level)
     @roster[grade_level]
  end

  def sort
    @roster.each_value  do |grade_level|
       grade_level.sort!
     end
  end

end
