require 'test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @main = ::MinitestPractice::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

#  def test_it_does_something_useful
#    assert false
#  end

  def test_odd?
    assert_equal true, @main.odd?(-10001), "-10001 is odd"
    assert_equal false, @main.odd?(-10000), "-10000 is not odd"
    assert_equal false, @main.odd?(-2), "-2 is not odd"
    assert_equal true, @main.odd?(-1), "-1 is odd"
    assert_equal false, @main.odd?(0), "0 is not odd"
    assert_equal true, @main.odd?(1), "1 is odd"
    assert_equal false, @main.odd?(2), "2 is not odd"
    assert_equal false, @main.odd?(10000), "10000 is not odd"
    assert_equal true, @main.odd?(10001), "10001 is odd"
  end

  def test_check_number?
    assert_equal false, @main.check_number?(998), "998 is not ok"
    assert_equal false, @main.check_number?(999), "999 is not ok"
    assert_equal true, @main.check_number?(1000), "1000 is ok"
    assert_equal false, @main.check_number?(1001), "1001 is not ok"
    assert_equal true, @main.check_number?(9998), "9998 is ok"
    assert_equal false, @main.check_number?(9999), "9999 is not ok"
    assert_equal false, @main.check_number?(10000), "10000 is not ok"
    assert_equal false, @main.check_number?(10001), "10001 is not ok"
    assert_equal false, @main.check_number?(0234), "0234 is not ok"
  end

  def test_enough_length?
    assert_equal false, @main.enough_length?("ab"), "length of ab is 2"
    assert_equal false, @main.enough_length?("abc"), "length of abc is 3"
    assert_equal false, @main.enough_length?("abcdefgh"), "length of abcdefgh is 8"
    assert_equal false, @main.enough_length?("abcdefghi"), "length of abcdefghi is 9"
  end

  def test_divide
    assert@main.divide(10, 2) == 5, "10 / 2 is 5"
    assert@main.divide(11, 2) ==  5, "11 / 2 is 5"
    assert_raises ZeroDivisionError do 
      @main.divide(10, 0)
    end
  end

  def test_fizz_buzz
    assert@main.fizz_buzz(3) == "Fizz", "3 is Fizz"
    assert@main.fizz_buzz(5) == "Buzz", "5 is Buzz"
    assert@main.fizz_buzz(15) == "FizzBuzz", "15 is FizzBuzz"
    assert_nil@main.fizz_buzz(2), "2 is not FizzBusz"
  end

  def test_hello
    assert_output("Hello") {@main.hello()}
  end 

end
