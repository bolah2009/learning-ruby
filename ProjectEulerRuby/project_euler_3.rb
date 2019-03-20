# DISCLAIMER !!!
# Please do no use this solution to solve the Project Euler (https://projecteuler.net/) problems
# This repository is for personal development only in this regard
# Thanks!

# Largest prime factor

# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

class PrimeFactor
  def initialize(number)
    if number.is_a?(Integer)
      @number = number
    else
      puts 'Enter a valid number ...'
      exit
    end
  end

  def is_prime
    prime @number
  end

  def prime(number)
    index = 2
    while index < number
      return false if (number % index).zero?

      index += 1
    end
    true
  end
end

prime = PrimeFactor.new(29)
puts prime.is_prime