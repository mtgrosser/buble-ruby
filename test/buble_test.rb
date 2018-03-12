require_relative 'test_helper'

class BubleTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil Buble::VERSION
  end

  def test_template_literals
    assert_equal 'var name = "Your name is " + first + " " + last + "."', Buble.transform('var name = `Your name is ${first} ${last}.`')
  end
  
  def test_arrow
    assert_equal 'ary.map(function (x) { return x.size; })', Buble.transform('ary.map(x => x.size)')
  end
  
  def test_class
    assert_equal 'var Foo = function Foo () {};', Buble.transform('class Foo {}')
  end
end
