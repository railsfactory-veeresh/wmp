require  '../lib/roman.rb'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end
  def test_one
    	assert_equal 'XV',Roman.convert(15)
    	assert_equal 'CXI',Roman.convert(111)
    	assert_equal 'DXXV',Roman.convert(525)
     	assert_equal 'DCXXVII',Roman.convert(627)
 	assert_equal 'CMXCIX',Roman.convert(999)
 	assert_equal 'CXXIII',Roman.convert(123)
 	assert_equal 'DCCCLX',Roman.convert(860)
 	assert_equal 'DCCLXXIII',Roman.convert(783)
  end
end  
