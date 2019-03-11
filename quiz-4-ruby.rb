# A Few Things to Try

# Write the program we talked about at the very beginning of this chapter.
# Let's write a program which asks us to type in as many words as we want
# (one word per line, continuing until we just press Enter on an empty line),
# and which then repeats the words back to us in alphabetical order. OK?
# Hint: There's a lovely array method which will give you a sorted version of an array:  sort. Use it!

words = []
word = gets.chomp
while word != ""
    words.push(word)
    word = gets.chomp
end

puts "Here are your sorted words..."
puts words.sort

# Try writing the above program without using the sort method.
# A large part of programming is solving problems, so get all the practice you can!
puts ""
puts ""
puts "Now using my own customize sort..."
clone_words = words.clone
array = []
while array.length < words.length
    initial_word = clone_words[0]
    clone_words.each do |word|
      if word.downcase < initial_word.downcase
        initial_word = word
      end
    end
  array.push(initial_word)
  index = clone_words.find_index(initial_word)
  clone_words.delete_at(index)
end

puts ""
puts ""
puts array
