require 'helper'

class TestFizzBuzz < MiniTest::Unit::TestCase

  def setup
    @fizzbuzz = FizzBuzz.new
  end


  def test_new_fizzbuzz
    assert_instance_of FizzBuzz, FizzBuzz.new
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


  def test_will_it_fizz
    assert_respond_to @fizzbuzz, :fizz?
    assert            @fizzbuzz.fizz?(3)
    assert_nil        @fizzbuzz.fizz?(2)
  end


  def test_will_it_buzz
    assert_respond_to @fizzbuzz, :buzz?
    assert            @fizzbuzz.buzz?(5)
    assert_nil        @fizzbuzz.buzz?(2)
  end


  def test_will_it_fizzbuzz
    assert_respond_to @fizzbuzz, :fizzbuzz?
    assert            @fizzbuzz.fizzbuzz?(30)
    assert_nil        @fizzbuzz.fizzbuzz?(2)
  end

end
