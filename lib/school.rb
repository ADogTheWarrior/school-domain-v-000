class School
attr_accessor :name
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.has_key? grade
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    roster.each do |grade|
      grade.sort
    end
    ROSTER
  end
end
