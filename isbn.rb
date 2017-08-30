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


