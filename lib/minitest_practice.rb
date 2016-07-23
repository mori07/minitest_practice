require "minitest_practice/version"

module MinitestPractice
  class Main
    def odd?(n)
      if n % 2 == 1
        return true
      else
        return false
      end
    end

    def check_number?(n)
      if n.to_s.length == 4 && n.to_s[0] != 0 && n % 2 == 0
        return true
      else
        return false
      end
    end

    def enough_length?(str)
      if str.length >= 3 && str.length <= 8
        return true
      else
        return false
      end
    end

    def divide(dividend, diviser)
      return dividend / diviser
    end

    def fizz_buzz(n)
      if n == 0 then
        return nil 
      elsif n % 15 == 0 then
        return "FizzBuzz"
      elsif n % 3 == 0 then
        return "Fizz"
      elsif n % 5 == 0 then
        return "Buzz" 
      else
        return nil
      end
    end

    def hello()
      print "Hello"
    end
  end
end
