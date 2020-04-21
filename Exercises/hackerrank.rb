def minimumNumber(n, password)
  # Return the minimum number of characters to make the password strong
  letters_needed = 0

  if contains_lower?(password) && contains_upper?(password) && contains_number?(password) && contains_special?(password) && n < 6
    return 6 - n
  end

  if !contains_number?(password)
    letters_needed += 1
  end
  if !contains_lower?(password)
    letters_needed += 1
  end
  if !contains_upper?(password)
    letters_needed += 1
  end
  if !contains_special?(password)
    letters_needed += 1
  end
  if n == 1
    letters_needed = 5
  end
  if n == 2
    letters_needed = 4
  end
  if n == 3
    letters_needed = 3
  end

  return letters_needed
end

def is_number?(string)
  true if Float(string) rescue false
end

def contains_number?(s)
  chars = s.split("")
  chars.each do |char|
    if is_number?(char)
      return true
    end
  end
  return false
end

def is_lower?(c)
  c >= "a" && c <= "z"
end

def is_upper?(c)
  c >= "A" && c <= "Z"
end

def contains_upper?(s)
  chars = s.split("")
  chars.each do |char|
    if is_upper?(char)
      return true
    end
  end
  return false
end

def contains_lower?(s)
  chars = s.split("")
  chars.each do |char|
    if is_lower?(char)
      return true
    end
  end
  return false
end

def contains_special?(s)
  chars = s.split("")
  specials = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "+"]
  chars.each do |char|
    if specials.include?(char)
      return true
    end
  end
  return false
end

p minimumNumber(4, "a$Qa")
