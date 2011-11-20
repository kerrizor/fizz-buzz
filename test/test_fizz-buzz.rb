require 'helper'

class TestFizzBuzz < MiniTest::Unit::TestCase

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


  def test_will_it_fizz
    assert_respond_to 4, :fizz?
    assert            3.fizz?
    assert_nil        2.fizz?
  end


  def test_will_it_buzz
    assert_respond_to 4, :buzz?
    assert            5.buzz?
    assert_nil        2.buzz?
  end


  def test_will_it_fizzbuzz
    assert_respond_to 4, :fizzbuzz?
    assert            30.fizzbuzz?
    assert_nil        2.fizzbuzz?
  end

end
