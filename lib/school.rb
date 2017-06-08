class School

  def initialize (school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster.keys.include?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |key_values, sorted_roster|
      sorted_roster[key_values[0]] = key_values[1].sort
    end
  end

end
