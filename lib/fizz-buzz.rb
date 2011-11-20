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
    if (self % 3) == 0
      return :true
    end
  end

  def buzz?
    if (self % 5) == 0
      return :true
    end
  end

  def fizzbuzz?
    if (self % 15) == 0
      return :true
    end
  end

end
