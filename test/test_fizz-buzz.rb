require 'helper'

class TestFizzBuzz < Test::Unit::TestCase

  def test_new_fizzbuzz
    assert_instance_of FizzBuzz, FizzBuzz.new
  end

  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_crunch
    assert_respond_to @fizzbuzz, :crunch
    assert_kind_of Array, @fizzbuzz.crunch

    assert_equal 100,         @fizzbuzz.crunch.length
    assert_equal "Fizz",      @fizzbuzz.crunch[2]
    assert_equal "4",         @fizzbuzz.crunch[3].to_s
    assert_equal "Buzz",      @fizzbuzz.crunch[4]
    assert_equal "FizzBuzz",  @fizzbuzz.crunch[14]
  end


  def test_crunch_with_range
    assert_equal 14,          @fizzbuzz.crunch(4,17).length
    assert_equal "Fizz",      @fizzbuzz.crunch(4,17)[2]
    assert_equal "4",         @fizzbuzz.crunch(4,17)[0].to_s
    assert_equal "Buzz",      @fizzbuzz.crunch(4,17)[1]
    assert_equal "FizzBuzz",  @fizzbuzz.crunch(4,17)[11]

    assert_nil @fizzbuzz.crunch(44,17)
  end


  def test_will_it_fizz
    assert_respond_to 4, :fizz?
    assert            3.fizz?
    assert            !2.fizz?
  end


  def test_will_it_buzz
    assert_respond_to 4, :buzz?
    assert            5.buzz?
    assert            !2.buzz?
  end


  def test_will_it_fizzbuzz
    assert_respond_to 4, :fizzbuzz?
    assert            30.fizzbuzz?
    assert            !2.fizzbuzz?
  end

end
