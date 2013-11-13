require 'test/unit'

require_relative 'assignment_one'
include AssignmentOne

class TestAssignmentOne < Test::Unit::TestCase


  def test_count_5
    good_out = "0, 1, 2, 3, 4, 5"
    assert_equal(good_out, count(5))
  end

  def test_count_0
    assert_equal("", count(0))
  end

  def test_num_2
    assert_equal "two", num_to_name(2)
  end

  def test_num_stuff
    assert_equal "Invalid", num_to_name("stuff")
  end
end
