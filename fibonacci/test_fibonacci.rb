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

end
