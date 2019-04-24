# code here!

class School

attr_reader :name, :roster

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
 roster.map do |grade, names|
   roster[grade] = names.sort
 end
 @roster
end


end
