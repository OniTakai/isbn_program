require "minitest/autorun"
require_relative "isbn.rb"
class TestISBN < Minitest::Test
    def test_length_10
       isbn = "1234"
       assert_equal(false, isbn_check_10(isbn))
    end
    
    def test_length_10
        isbn = "1234567890"
        assert_equal(true, isbn_check_10(isbn))
    end

    def test_length_13
        isbn = "1234567890123"
        assert_equal(true, isbn_check_13(isbn))
    end

    def test_length_13
        isbn = "120"
        assert_equal(false, isbn_check_13(isbn))
    end
end 