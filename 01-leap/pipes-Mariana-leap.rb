def leap_year?(year)
  if year % 4 == 0
    return julian_leap?(year)
  else
    return false
  end
end


def julian_leap?(year)
  if year % 100 == 0
    return gregorian_leap?(year)
  else
    return true
  end
end

def gregorian_leap?(year)
  if year % 400 == 0
    return true
  else
    return false
  end
end
