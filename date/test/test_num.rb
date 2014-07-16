require '../lib/numbers'
require 'test/unit'


class TestNumbers < Test::Unit::TestCase

def test_num
    assert_equal '21st',Numbers.convert(21)
    assert_equal '19th',Numbers.convert(19)
    assert_equal '23rd',Numbers.convert(23)
    assert_equal '101st',Numbers.convert(101)
    assert_equal '142nd',Numbers.convert(142)
  end



end 
