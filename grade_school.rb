# Calculate grade and sort
class School
  def initialize
    @record = Hash.new { [] }
  end

  def add(name, grade)
    @record[grade] <<= name
  end

  def grade(level)
    @record[level].sort
  end

  def to_hash
    @record.sort.each_with_object({}) do |(grade, students), sorted|
      sorted[grade] = students.sort
    end
  end
end
