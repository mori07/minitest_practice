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
    assert@main.odd?(1), "1 is odd"
    refute@main.odd?(2), "2 is not odd"
    assert@main.odd?(3), "3 is odd"
    refute@main.odd?(4), "4 is not odd"
    refute@main.odd?("a"), "a is not number"
  end

  def test_check_number?
    assert@main.check_number?(1234), "1234 is ok"
    refute@main.check_number?(1235), "1235 in not ok"
    refute@main.check_number?(0234), "0234 in not ok"
    refute@main.check_number?(12344), "12344 in not ok"
  end

  def test_enough_length?
    assert@main.enough_length?("abc"), "length of abc is 3"
    assert@main.enough_length?("abcdefgh"), "length of abcdefgh is 8"
    refute@main.enough_length?("ab"), "length of abcdefgh is 2"
    refute@main.enough_length?("abcdefghi"), "length of abcdefgh is 9"
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
