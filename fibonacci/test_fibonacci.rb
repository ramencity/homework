require_relative 'fibonacci'
require 'test/unit'

class TestFibonacci < Test::Unit::TestCase

  def test_fibonacci_array_final_value
    assert_equal([1, 1, 2, 3, 5, 8, 13], fibonacci(20) )
    assert_equal([1, 1, 2, 3, 5, 8, 13, 21], fibonacci(21))
  end

  def test_fibonacci_array_size
    assert_equal(20, fibonacci_size(20).size)
    assert_equal(1, fibonacci_size(1).size)
  end

  def test_array_add_method
    assert_equal(13, add_to_fibonacci_array([1, 1, 2, 3, 5], 8))
  end

  def test_non_numbers_raise_error
    assert_raise(TypeError) {fibonacci('x')}
    assert_raise(TypeError) {fibonacci_size('x')}
  end
end
