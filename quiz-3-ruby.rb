# A Few Things to Try

# "99 bottles of beer on the wall..." 
# Write a program which prints out the lyrics to that beloved classic,
# that field-trip favorite: "99 Bottles of Beer on the Wall."

puts "Lyrics of the song 99 Bottles of Beer"
no_of_bottles = 99
while no_of_bottles > 0
    puts ""
    puts no_of_bottles.to_s + " bottles of beer on the wall, " + no_of_bottles.to_s + " bottles of beer."
    no_of_bottles -= 1
    puts "Take one down and pass it around, " + no_of_bottles.to_s + " bottles of beer on the wall."
end

puts ""
puts "No more bottles of beer on the wall, no more bottles of beer." 
no_of_bottles = 99
puts "Go to the store and buy some more, " + no_of_bottles.to_s + " bottles of beer on the wall."

# Write a Deaf Grandma program. 
# Whatever you say to grandma (whatever you type in),
# she should respond with  HUH?!  SPEAK UP, SONNY!,
# unless you shout it (type in all capitals).
# If you shout, she can hear you (or at least she thinks so)
# and yells back, NO, NOT SINCE 1938!
# To make your program really believable,
# have grandma shout a different year each time;
# maybe any year at random between 1930 and 1950.
# (This part is optional, and would be much easier
# if you read the section on Ruby's random number generator
# at the end of the methods chapter.) 
# You can't stop talking to grandma until you shout BYE.
# Hint: Don't forget about  chomp!  'BYE' 
# with an Enter is not the same as 'BYE' without one!
# Hint 2: Try to think about what parts of your program should happen over and over again. All of those should be in your while loop.
# Extend your Deaf Grandma program:
# What if grandma doesn't want you to leave?
# When you shout BYE, she could pretend not to hear you.
# Change your previous program so that you have to shout BYE three times in a row.
# Make sure to test your program: if you shout BYE three times,
# but not in a row, you should still be talking to grandma.

puts ""
puts "HELLO SONNY!"
input = gets.chomp
puts ""
while input != 'BYE BYE BYE'
  if input != input.upcase
    puts "HUH?!  SPEAK UP, SONNY!"
    puts ""
  else 
    random_year = 1930 + rand(21)
    puts "NO, NOT SINCE " + random_year.to_s + "!"
    puts ""
  end
 input = gets.chomp
end
puts "Oh, BYE SONNY!"


# Leap Years. Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). Leap years are years divisible by four (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). (Yes, it's all pretty confusing, but not as confusing as having July in the middle of the winter, which is what would eventually happen.)
