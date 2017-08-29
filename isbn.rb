require_relative "tests.rb"

def isbn_check_10(number)
    string = number 
if string.length == 10
    true
else 
    false
end
end 

def isbn_check_13(number)
string = number 
if string.length == 13
    true
else 
    false
end 
end 
isbn_check_10("100")
isbn_check_13("100")

def clean_up(number)
    my_string = number
    my_string.gsub!("-","")
    my_string.gsub!(" ","")
    clean_number = my_string
    puts my_string
end
clean_up("1-2-3-444 566")