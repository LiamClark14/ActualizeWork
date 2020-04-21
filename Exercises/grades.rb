def roundGrades(grades)
  grades.map do |grade|
    if grade < 37
      grade
    elsif grade % 5 > 2
      grade += 5 - (grade % 5)
    else
      grade
    end
  end
end

grades = [73, 67, 38, 33]

puts roundGrades(grades)
