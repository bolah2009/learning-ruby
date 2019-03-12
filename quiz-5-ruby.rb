def englishNumber number  
    number = number.to_i  
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
        if number%10000 == 0
            return english_number
        else
            return english_number = english_number +' '+ (englishNumber number%1000)
        end
        
    elsif (array_number.length == 6)
        # 100,000 hundred thousand
        english_number = english_number + (englishNumber array_number.take(3).join.to_i) + ' ' + large_number_array[1]
        if number%100000 == 0
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
        
    elsif (array_number.length == 9)
        # 100,000,000 hundred million

    elsif (array_number.length == 10)
        # 1,000,000,000 billion

    elsif (array_number.length == 11)
        # 10,000,000,000 ten billion
        
    elsif (array_number.length == 12)
        # 100,000,000,000 hundred billion

    elsif (array_number.length == 13)
        # 1,000,000,000,000 trillion

    elsif (array_number.length == 14)
        # 10,000,000,000,000 ten trillion
        
    elsif (array_number.length == 15)
        # 100,000,000,000,000 hundred trillion

    elsif (array_number.length == 16)
        # 1,000,000,000,000,000 quadrillion

    elsif (array_number.length == 17)
        # 10,000,000,000,000,000 ten quadrillion
        
    elsif (array_number.length == 18)
        # 100,000,000,000,000,000 hundred quadrillion

    elsif (array_number.length == 19)
        # 1,000,000,000,000,000,000 sextillion

    elsif (array_number.length == 20)
        # 10,000,000,000,000,000,000 ten sextillion
        
    elsif (array_number.length == 21)
        # 100,000,000,000,000,000,000 hundred sextillion
        
    end




    return "Nice one, that's number " + number.to_s + ' Number ' + english_number
end

puts englishNumber 0
puts englishNumber 1
puts englishNumber 2
puts englishNumber 3
puts englishNumber 4
puts englishNumber 5
puts englishNumber 6
puts englishNumber 7
puts englishNumber 8
puts englishNumber 9
puts englishNumber 10
puts englishNumber 1400306
puts englishNumber 2602700
puts englishNumber 3405078
puts englishNumber 4129499
puts englishNumber 5180099
puts englishNumber 6400000
puts englishNumber 7999000
puts englishNumber 8781090
puts englishNumber 9900000
puts englishNumber 9000000
puts '9.7'
puts englishNumber -5
puts '-5'
puts englishNumber 'not a number'
puts 'not a number'