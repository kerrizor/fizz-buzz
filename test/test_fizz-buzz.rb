require 'helper'

class TestFizzBuzz < Test::Unit::TestCase

  def setup
    @fizzbuzz_range = (1..100).fizzbuzz
    @fizzbuzz_array = Array(1..100).fizzbuzz
  end

  def test_generic_fizzbuzz
    assert_respond_to Array.new,        :fizzbuzz
    assert_respond_to Numeric.new,      :fizz?
  end

  def test_fizzbuzz_range
    assert_respond_to @fizzbuzz_range,  :fizzbuzz
    assert_kind_of Array, @fizzbuzz_range

    assert_equal 100,         @fizzbuzz_range.length
    assert_equal "Fizz",      @fizzbuzz_range[2]
    assert_equal "4",         @fizzbuzz_range[3].to_s
    assert_equal "Buzz",      @fizzbuzz_range[4]
    assert_equal "FizzBuzz",  @fizzbuzz_range[14]
  end

  def test_fizzbuzz_array
    assert_respond_to @fizzbuzz_array,  :fizzbuzz
    assert_kind_of Array, @fizzbuzz_array

    assert_equal 100,         @fizzbuzz_array.length
    assert_equal "Fizz",      @fizzbuzz_array[2]
    assert_equal "4",         @fizzbuzz_array[3].to_s
    assert_equal "Buzz",      @fizzbuzz_array[4]
    assert_equal "FizzBuzz",  @fizzbuzz_array[14]
  end


  def test_will_it_fizz
    assert_respond_to 4, :fizz?
    assert            3.fizz?
    assert            !2.fizz?
    assert            3.0.fizz?
    assert            !3.1.fizz?
  end


  def test_will_it_buzz
    assert_respond_to 4, :buzz?
    assert            5.buzz?
    assert            !2.buzz?
    assert            5.0.buzz?
    assert            !5.1.buzz?
  end


  def test_will_it_fizzbuzz
    assert_respond_to 4, :fizzbuzz?
    assert            30.fizzbuzz?
    assert            !2.fizzbuzz?
    assert            30.0.fizzbuzz?
    assert            !30.1.fizzbuzz?
  end

end
