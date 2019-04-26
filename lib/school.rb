class School

  attr_accessor :roster

# roster {
#   :grade 1 => ["John","Jacob"]
#   :grade 2 => ["Kelly"]
#   :grade 12=> ["Mikey McGovern","Dani"]

# }

  # SCHOOL = []

  def initialize(school)
    @school = school
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
  @roster.each_value do |grade|
    grade.sort!
  end
  
end

end





#   def add_student(name)
#     @school.self name
#   end
# end
