class FizzBuzz
  def crunch
    return_values = Array.new

    (1..100).each do |n|
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
