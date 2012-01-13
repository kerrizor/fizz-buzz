module FizzBuzz
  # return an array of fizzbuzz'd values for the input data set (Array or Range)
  def fizzbuzz
    return_values = Array.new

    self.each do |n|
      unless n.is_a?(Numeric)
        return_values << n
        next
      end

      if n.fizzbuzz?
         return_values << "FizzBuzz"
      elsif n.buzz?
        return_values << "Buzz"
      elsif n.fizz?
        return_values << "Fizz"
      else
        return_values << n
      end
    end

    return return_values
  end
end


module FizzBuzzNumerics
  # For testing the Fizz-, Buzz-, or Fizzbuzz-ness of a Fixnum
  #   3.fizz?       #  => true
  #   3.buzz?       #  => false
  #   15.fizzbuzz?  #  => true
  #
  # Note that using these methods, fizzbuzzy numbers like 15 will fizz, buzz, AND fizzbuzz.

  def fizz?
    self % 3 == 0
  end

  def buzz?
    self % 5 == 0
  end

  def fizzbuzz?
    self % 15 == 0
  end
end


class Range
  include FizzBuzz
end


class Array
  include FizzBuzz
end


class Numeric
  include FizzBuzzNumerics
end



