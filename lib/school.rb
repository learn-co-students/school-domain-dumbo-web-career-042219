class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade_level)
    if @roster[grade_level].nil?
      @roster[grade_level] = [student]
    else
      @roster[grade_level] << student
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.each_value {|grade_level| grade_level.sort!}
  end
end