# A Few Things to Try
# Expand upon englishNumber. First, put in thousands. So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.
# Expand upon englishNumber some more. Now put in millions, so you get 'one million' instead of 'one thousand thousand'. Then try adding billions and trillions. How high can you go?



def englishNumber number  
    if number.is_a?(Integer) != true 
        return 'Please, enter a valid integer'
    elsif number < 0
        return 'Enter a valid integer (positive)'
    end

    unit_array = ['zero','one','two','three','four','five','six','seven','eight','nine']
    teens_array = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
    tens_array = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    large_number_array = ['hundred','thousand','million','billion','trillion','quadrillion','sextillion']

    english_number = ''
    array_number = number.to_s.split('')
    
    if array_number.length == 1
        return english_number = english_number + unit_array[number]
    elsif (array_number.length == 2 and number <= 19)
        return english_number = english_number + teens_array[number-10]
    elsif (array_number.length == 2 and number > 19)
        index = array_number[0].to_i - 2
        english_number = english_number + tens_array[index]
        if number%10 == 0
            return english_number
        else
        return english_number = english_number + "-" + (englishNumber array_number[1].to_i)
        end

    elsif (array_number.length == 3)
        # 100 hundred
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[0]
        if number%100 == 0
            return english_number
        else
            return english_number = english_number +' and '+ (englishNumber number%100)
        end

    elsif (array_number.length == 4)
        # 1,000 thousand
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[1]
        if number%1000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000)
        end

    elsif (array_number.length == 5)
        # 10,000 ten thousand
        english_number = english_number + (englishNumber array_number.take(2).join.to_i) + ' ' + large_number_array[1]
        if number%1000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000)
        end
        
    elsif (array_number.length == 6)
        # 100,000 hundred thousand
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[1]
        if number%1000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000)
        end

    elsif (array_number.length == 7)
        # 1,000,000 million
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[2]
        if number%1000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000)
        end
        
    elsif (array_number.length == 8)
        # 10,000,000 ten million
        english_number = english_number + (englishNumber array_number.take(2).join.to_i) + ' ' + large_number_array[2]
        if number%1000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000)
        end
        
    elsif (array_number.length == 9)
        # 100,000,000 hundred million
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[2]
        if number%1000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000)
        end

    elsif (array_number.length == 10)
        # 1,000,000,000 billion
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[3]
        if number%1000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000)
        end

    elsif (array_number.length == 11)
        # 10,000,000,000 ten billion
        english_number = english_number + (englishNumber array_number.take(2).join.to_i) + ' ' + large_number_array[3]
        if number%1000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000)
        end
        
    elsif (array_number.length == 12)
        # 100,000,000,000 hundred billion
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[3]
        if number%1000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000)
        end

    elsif (array_number.length == 13)
        # 1,000,000,000,000 trillion
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[4]
        if number%1000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000)
        end

    elsif (array_number.length == 14)
        # 10,000,000,000,000 ten trillion
        english_number = english_number + (englishNumber array_number.take(2).join.to_i) + ' ' + large_number_array[4]
        if number%1000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000)
        end
        
    elsif (array_number.length == 15)
        # 100,000,000,000,000 hundred trillion
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[4]
        if number%1000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000)
        end

    elsif (array_number.length == 16)
        # 1,000,000,000,000,000 quadrillion
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[5]
        if number%1000000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000000)
        end

    elsif (array_number.length == 17)
        # 10,000,000,000,000,000 ten quadrillion
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[5]
        if number%1000000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000000)
        end
        
    elsif (array_number.length == 18)
        # 100,000,000,000,000,000 hundred quadrillion
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[5]
        if number%1000000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000000)
        end

    elsif (array_number.length == 19)
        # 1,000,000,000,000,000,000 sextillion
        english_number = english_number + unit_array[array_number[0].to_i] + ' ' + large_number_array[6]
        if number%1000000000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000000000)
        end

    elsif (array_number.length == 20)
        # 10,000,000,000,000,000,000 ten sextillion
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[2]
        if number%1000000000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000000000)
        end
        
    elsif (array_number.length == 21)
        # 100,000,000,000,000,000,000 hundred sextillion
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[2]
        if number%1000000000000000000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000000000000000000)
        end
        
    end




    return "Oh!!! " + number.to_s + " is too huge to compute, sorry about that. My limit is hundreds of sextillion (If that's even a real number ;) )."
end

# Test cases
puts ''
puts 'Test englishNumber method'
puts englishNumber 69
puts '69'
puts englishNumber 98988699595958393958696948
puts '98988699595958393958696948'
puts englishNumber -5
puts '-5'
puts englishNumber 5.6
puts '5.6'
puts englishNumber 'not a number'
puts 'not a number'

# A function that counts from one number to another
def count_in_english_number (from_number,  to_number)
    while from_number <= to_number
        puts englishNumber from_number
        from_number = from_number + 1
    end
end

# Test case
puts ''
count_in_english_number 1, 10


# "Ninety-nine bottles of beer..."
# Using englishNumber and your old program,
# write out the lyrics to this song the right way this time.
# Punish your computer: have it start at 9999.

def sing_bottles_of_beer no_of_bottles

    puts "Lyrics of the song " + (englishNumber no_of_bottles) + " Bottles of Beer"
    while no_of_bottles > 0
     puts ""
     puts (englishNumber no_of_bottles) + " bottles of beer on the wall, " + (englishNumber no_of_bottles) + " bottles of beer."
     no_of_bottles -= 1
     puts "Take one down and pass it around, " + (englishNumber no_of_bottles) + " bottles of beer on the wall."
    end
end

# Test case
sing_bottles_of_beer 99