module FizzBuzz
  def fizzbuzz
    fb_values = Array(self) unless self.class == (Range||Array)

    return_values = Array.new

    (fb_values.first..fb_values.last).each do |n|
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


class Fixnum
  include FizzBuzz
end


class Float
  include FizzBuzz
end


