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