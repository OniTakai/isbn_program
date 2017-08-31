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
    isbn_clean = isbn_clean.delete("-")
    isbn_clean = isbn_clean.delete(" ")
    isbn_clean = isbn_clean
    puts isbn_clean.length
    if isbn_clean.length == 10
    isbn_clean = isbn_clean[0..8]    
    my_isbn_array = isbn_clean.split('')
    my_isbn_array.each.with_index do |item,index|
        my_sum = my_sum + (item.to_f * (index.to_f + 1))
    end 
        check_digit = my_sum % 11
        if check_digit == 10 
            my_isbn_array << X
        else 
            my_isbn_array << check_digit
        end 
        puts my_sum
        puts my_isbn_array
            
    elsif isbn_clean.length == 13
    else
    puts "This is not a valid ISBN number"
    end 
end 
check_last_number("92-----8384 79-9-9")
