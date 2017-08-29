require_relative "tests.rb"

def isbn_check_11(number)
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
isbn_check_11("100")