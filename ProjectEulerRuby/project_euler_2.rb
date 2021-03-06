# DISCLAIMER !!!
# Please do no use this solution to solve the Project Euler (https://projecteuler.net/) problems
# This repository is for personal development only in this regard
# Thanks!

# Even Fibonacci numbers

# Problem 2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class 	FibonacciNumbers

    def initialize number
        if number.is_a?(Integer) 
        @number = number
        else
            puts "Enter a valid number ..."
            exit
        end
        @sum = 0
        @array = [1,2]
        @last = 2
        while @last < @number
            index = @array.length
            new_element = @array[index-1] + @array[index-2]
            @array.push(new_element)
            @last = @array.last + @array[index-2]
        end
    end

    def list
        @array.to_s
    end

    def sum_even
        @array.each do |number|
            if number%2 == 0
                @sum += number
            end
        end
        @sum
    end
    
end

fibonacci_numbers = FibonacciNumbers.new(4000000)
puts fibonacci_numbers.list
puts fibonacci_numbers.sum_even


# Congratulations, the answer you gave to problem 2 is correct.

# You are the 666261st person to have solved this problem.

# This problem had a difficulty rating of 5%. The highest difficulty rating you have solved remains at 5%. 

# Return to Problems page