class FizzBuzz

  # Returns an array solving the classic 1 to 100 FizzBuzz problem.
  def crunch(start=1, stop=100)
    return nil unless start < stop

    return_values = Array.new

    (start..stop).each do |n|
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



class Fixnum

  # For testing the Fizz-, Buzz-, or Fizzbuzz-ness of a Fixnum
  #   3.fizz?       #  => true
  #   3.buzz?       #  => false
  #   15.fizzbuzz?  #  => true

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
