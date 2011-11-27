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
  #   5.buzz?       #  => nil
  #   15.fizzbuzz?  #  => true

  def fizz?
    return true if (self % 3) == 0
  end

  def buzz?
    return true if (self % 5) == 0
  end

  def fizzbuzz?
    return true if (self % 15) == 0
  end

end
