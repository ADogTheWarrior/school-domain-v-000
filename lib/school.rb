class School
attr_accessor :name
attr_reader :roster

ROSTER = {}

  def initialize(name)
    @name = name
    @roster = ROSTER
  end

  def add_student(name, grade)
    if ROSTER.has_key? grade
      ROSTER[grade] << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end

  def grade(grade)
    return ROSTER[grade]
  end

  def sort
    #ROSTER.collect |grade|
    #  grade.sort
    #end
    ROSTER
  end
end
