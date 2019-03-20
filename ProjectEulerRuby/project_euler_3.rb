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

  def prime_numbers
    array = []
    index = 2
    while index < @number
      array.push(index) if prime index
      index += 1
    end
    array
  end

  def prime_factors
    prime_numbers_array = prime_numbers
    prime_factors = []
    index = 0
    while index < prime_numbers_array.length
      prime_number = prime_numbers_array[index]
      prime_factors.push(prime_number) if (@number % prime_number).zero?
      index += 1
    end
    prime_factors
  end

  def largest_prime_factor
    prime_factors.last
  end
end

prime = PrimeFactor.new(600_851_475_143)
puts prime.is_prime
puts prime.prime_numbers.to_s
puts prime.prime_factors.to_s
puts prime.largest_prime_factor.to_s