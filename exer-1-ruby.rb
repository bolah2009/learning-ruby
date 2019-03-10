# First exercise on ruby, source: https://pine.fm/LearnToProgram/chap_01.html

# A Few Things to Try
# Write a program which tells you:

# 1. Q how many hours are in a year?
puts "Note that 'One year has the length of 365 days, 5 hours, 48 minutes and 45 seconds.' - Source: https://kalender-365.de/leap-years.php"
puts ""
puts "Q: how many hours are in a year?"
# There are 365 days in a year and 24 hours in a day
year_in_hours = ((365*24) + 5).to_s
puts "A: There are " + year_in_hours + " hours in a year."

puts ""
# how many minutes are in a decade?
puts "Q: how many minutes are in a decade?"
# There are 10 years in a decade
decade_days_in_minutes = 365*10*24*60
decade_hours_in_minutes = 5*10*60
decade_minutes_in_minutes = 48*10
decade_seconds_in_minutes = (45*10)/60
decade_in_minutes = (decade_days_in_minutes + decade_hours_in_minutes + decade_minutes_in_minutes + decade_seconds_in_minutes).to_s
puts "A: There are " + decade_in_minutes + " minutes in a decade."

puts ""
# how many seconds old are you?
puts "Q: How many seconds old are you?"
# I am starting from 1991, 30th October - which counts as 62 days in 1991 up to now (Time.now)
seconds_in_1991 = 62*24*60*60
seconds_this_year = ((Time.now.month-1)*30*24*60*60 + (Time.now.day-1)*24*60*60 + (Time.now.hour)*60*60 + (Time.now.min)*60 + (Time.now.sec))
current_year = Time.now.year - 1
years_old = current_year - 1992
years_old_in_seconds = ((years_old*365*24*60*60) + (years_old*5*60*60) + (years_old*48*60) + (years_old*45) + seconds_in_1991 + seconds_this_year)
puts "A: I am " + years_old_in_seconds.to_s + " seconds old."

puts ""
# If I am 1298 million seconds old, how old am I?
# Your age will be gotten by dividing your seconds old by 60 (minutes), 24 (hours), 365 (days) for an average result.
puts "Q: If I am 1298 million seconds old, how old am I?"
seconds_age = (1298000000)/(60*60*24*365)
puts "A: You are " + seconds_age.to_s + " years old"

puts ""
puts ""
puts "Hey! I am Bola and ..."
puts "I am " + ((years_old_in_seconds)/(60*60*24*365)).to_s + " years old today!"
