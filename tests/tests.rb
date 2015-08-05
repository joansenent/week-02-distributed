require 'minitest/autorun'


class TestExamples < MiniTest::Unit::TestCase
    
  def test_are_helpful
  	actual = 50 + 10    
    expected = 60
    assert_equal(expected, actual)
  end
 
end
