require 'minitest/autorun'

def simple_function()
	100
end

def double(input)
	# the return is optional - the last line is always reutned
	result =  input * 2 
	return result
end

def multiply(num_a, num_b)
	num_a * num_b
end

def join(str_a, str_b)
	"#{str_a} #{str_b}"
end

class TestFunctions < MiniTest::Unit::TestCase
    
  def test_a_function_returns_a_value
    actual = simple_function()
    assert_equal(100, simple_function())
  end

  def test_a_function_takes_input
    actual = double(2)
    assert(4, actual)

    actual = multiply(2, 6)
    assert_equal(12, actual)
  end

  def test_a_can_be_called_many_times
    result = join("Hello", "there")
    actual = join(result, "world")
    assert_equal("Hello there world", actual)
  end

  def test_a_can_passed_as_a_param
    actual = double(double(double(2))) # seeing double...
    
    # make this test pass
    assert_equal(0, actual)
  end
 
end
