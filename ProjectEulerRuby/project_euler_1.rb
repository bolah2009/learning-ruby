# DISCLAIMER !!!
# Please do no use this solution to solve the Project Euler (https://projecteuler.net/) problems
# This repository is for personal development only in this regard
# Thanks!

# Multiples of 3 and 5

# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

class 	MultiplesOf3and5

    def initialize number
        if number.is_a?(Integer) 
        @number = number
        else
            puts "Enter a valid number ..."
            exit
        end
        @index = 1
        @sum = 0
        @array = []
        while @index < @number
          if @index%3 == 0
            @array.push(@index)
            @sum += @index
          elsif 
            @index%5 == 0
            @array.push(@index)
            @sum += @index
          end
            @index +=1
        end
    end

    def list
        @array.to_s
    end

    def sum
        @sum
    end
    
end

multiples = MultiplesOf3and5.new(1000)
puts multiples.sum
puts multiples.list


# Congratulations, the answer you gave to problem 1 is correct.

# You are the 833392nd person to have solved this problem.

# This problem had a difficulty rating of 5%. The highest difficulty rating you had previously solved was 0%. 
# This is a new record. Well done!