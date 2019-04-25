# code here!
require 'pry'
class School

attr_reader :name, :roster

def initialize(name)
@roster = {}
@name = name
end

def add_student(name, grade_level)
  roster[grade_level] ||= []
  roster[grade_level] << name
  # if @roster[grade_level] == nil
  #   @roster[grade_level] = []
  #   @roster[grade_level] << name
  #
  # else
  #   @roster[grade_level] << name
  # end
end

def grade(grade)
  return roster[grade]
end

def sort
  @roster.each do |key, val|
    @roster[key] = val.sort
end
@roster
end
# binding.pry
end
