class FizzBuzz

  def crunch
    return_values = Array.new

    (1..100).each do |n|
      if (n % 15) == 0
         return_values << "FizzBuzz"
      elsif (n % 5) == 0
        return_values << "Buzz"
      elsif (n % 3) == 0
        return_values << "Fizz"
      else
        return_values << n
      end
    end

    return return_values
  end

  def fizz?(n)
    if (n % 3) == 0
      return :true
    end
  end


  def buzz?(n)
    if (n % 5) == 0
      return :true
    end
  end


  def fizzbuzz?(n)
    if (n % 15) == 0
      return :true
    end
  end

end