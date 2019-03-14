# A Few Things to Try (part one)

# One billion seconds...
# Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn?)
# one billion seconds old. Then go mark your calendar.

def one_billion_seconds birth_year, birth_month, birth_day, birth_hour, birth_minute, birth_second
    
    birthday = Time.mktime(birth_year, birth_month, birth_day, birth_hour, birth_minute, birth_second)
    billion_seconds_old = birthday + 1000000000
    if Time.now < billion_seconds_old
        return "Hey, you will be a BILLION seconds old on " + billion_seconds_old.to_s
    else 
        return "You were a BILLION seconds old on " + billion_seconds_old.to_s
    end
end
puts one_billion_seconds 1900, 10, 30, 9, 30, 23

# Happy Birthday!
# Ask what year a person was born in, then the month, then the day.
# Figure out how old they are and give them a big SPANK! for each birthday they have had.

def happy_birthday_spank
    puts "Hey, Lets find out how old you are!"
    puts "Enter your birth year (yyyy) in numbers (1000-" + Time.now.year.to_s + ")..."
    birth_year = gets.chomp.to_i
    while (birth_year > Time.now.year or birth_year < 1000)
        puts "Wrong, input. Please try again with numbers from 1000 to " + Time.now.year.to_s
        birth_year = gets.chomp.to_i
    end
    puts "Enter your birth month (mm) in numbers..."
    birth_month = gets.chomp.to_i
    while (birth_month < 1 or birth_month > 12)
        puts "Wrong, input. Please try again with numbers from 1 to 12"
        birth_month = gets.chomp.to_i
    end
    puts "Enter your birth day (dd) in numbers..."
    birth_day = gets.chomp.to_i
    while (birth_day < 1 or birth_day > 31)
        puts "Wrong, input. Please try again with numbers from 1 to 31"
        birth_day = gets.chomp.to_i
    end
    birth_day_seconds = Time.now - Time.mktime(birth_year,birth_month,birth_day)
    birthday = (birth_day_seconds/(60*60*24*365)).to_i
    index = 1
    while index <= birthday
        puts "SPANK! (" + index.to_s + ")"
        index+=1
    end
    puts "You are " + birthday.to_s + " years old!"
end

happy_birthday_spank