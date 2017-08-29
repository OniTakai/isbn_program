require "minitest/autorun"
require_relative "isbn.rb"
class TestISBN < Minitest::Test
    def test_length_11
       isbn = "1234"
       assert_equal(false, isbn_check_11(isbn))
    end
    
    def test_length_11
        isbn = "1234567890"
        assert_equal(true, isbn_check_11(isbn))
    end
end 