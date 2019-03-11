# Write a program which asks for a person's first name, then middle, then last. 
# Finally, it should greet the person using their full name.

puts "Hi there !"
print "What is your first name? "
first_name = " " + gets.chomp
print "What is your middle name? "
middle_name = " " + gets.chomp
print "What is your last name? "
last_name = " " + gets.chomp
puts "How are you," + first_name + middle_name + last_name + ", it's a pleasure meeting you!"

puts "" 
# Write a program which asks for a person's favorite number. 
# Have your program add one to the number, 
# then suggest the result as a bigger and better favorite number. 
# (Do be tactful about it, though.)
print "So ... " + first_name + ", what is your favorite number? "
favorite_number = gets.chomp
favorite_number = favorite_number.to_i + 1
puts "Hey," + first_name + ", " + favorite_number.to_s + " is a bigger and better favorite number! :)"