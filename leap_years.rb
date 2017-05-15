# find next 20 leap years

current_year = Time.now.year
leap_years  = []

while leap_years.length < 20
  if current_year % 4 == 0 && (current_year % 100 != 0 || current_year % 400 == 0)
    leap_years << current_year
  end
  current_year += 1
end

p leap_years
p leap_years.length
