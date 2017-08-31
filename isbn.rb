#def isbn_check_10(number)
#    string = number 
#if string.length == 10
#    true
#else 
#    false
#end
#end 

#def isbn_check_13(number)
#string = number 
#if string.length == 13
#    true
#else 
#    false
#end 
#end 


def clean_up(number)
    number = number.delete("-")
    number = number.delete(" ")
    isbn_clean = number
end


def check_length(number) 
    number = number.delete("-")
    number = number.delete(" ")
    isbn_clean = number
    puts number.length

    if isbn_clean.length == 10 || isbn_clean.length ==13
        true
    else 
        false
    end
end 

def check_last_number(isbn_clean)
    my_sum = 0
    my_13_sum = 0
    isbn_clean = isbn_clean.gsub(/\D/, '')
    isbn_clean = isbn_clean
    puts isbn_clean
    counter = 0
    if isbn_clean.length == 10
    isbn_clean = isbn_clean[0..9]    
    my_isbn_array = isbn_clean.split('')
    last_digit = my_isbn_array.pop
    my_isbn_array.each.with_index do |item,index|
        my_sum = my_sum + (item.to_i * (index.to_i + 1))
    end 
        check_digit = my_sum % 11
        if check_digit.to_s == last_digit.to_s
            my_isbn_array << check_digit.to_s
            puts "#{my_isbn_array} is a valid ISBN number"
        elsif 
        check_digit == 10
            my_isbn_array << "X"
        else 
            puts "This is not a valid ISBN"
        end 

    elsif isbn_clean.length == 13
        isbn_clean = isbn_clean[0..12]    
        my_isbn_array = isbn_clean.split('')
        last_digit = my_isbn_array.pop
        puts my_isbn_array.length
        while my_isbn_array.length >= counter
        my_13_sum = my_13_sum + ((my_isbn_array[counter + 1].to_i * 3) + (my_isbn_array[counter].to_i * 1))
        counter +=1 
        end  
    else
    puts "This is not a valid ISBN number"
    end 
puts my_13_sum
end 
check_last_number("742x1  3-a-94-761")
