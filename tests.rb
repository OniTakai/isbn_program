require "minitest/autorun"
require_relative "isbn.rb"
class TestISBN < Minitest::Test
    #def test_length_10
      # isbn = "1234"
     #  assert_equal(false, isbn_check_10(isbn))
    #end
    
    #def test_length_10
      #  isbn = "1234567890"
     #   assert_equal(true, isbn_check_10(isbn))
    #end

    #def test_length_13
      #  isbn = "1234567890123"
     #   assert_equal(true, isbn_check_13(isbn))
    #end

   # def test_length_13
  #      isbn = "120"
 #       assert_equal(false, isbn_check_13(isbn))
#    end

    def test_clean_num
        assert_equal("12345",clean_up("12-3 4 - 5"))
    end

    def test_length_clean_10
        assert_equal(true,check_length("123-45 678-99"))
    end 

    def test_length_clean_13
        assert_equal(true,check_length("1234 5 678 -9-0123"))
    end

    def test_length_clean_fail
        assert_equal(false, check_length("12------3    4"))
    end
end 