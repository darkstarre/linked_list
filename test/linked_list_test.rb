require 'linked_list'

class List < Minitest::Test

  def test_new_array_is_empty
    list = Linkedlist.new
    assert_equal nil, list[0]
  end

  def test_array_shifts
    list = Linkedlist.new(Node.new("a", Node.new("b", Node.new("c",nil)))
    list.shift
    assert_equal "b", list[0]
  end

  def test_array_unshifts
    list = Linkedlist.new(Node.new("a", Node.new("b", Node.new("c", nil)))
    list.unshift("x")
    assert_equal "x", list[0]
  end

  def test_array_appends
    link = Linkedlist.new(Node.new("a", Node.new("b", Node.new("c", nil)))
    list << "x"
    assert_equal "x", list[3]
  end

  def test_array_has_an_index
    list = Linkedlist.new(Node.new("a", Node.new("b", Node.new("c", nil)))
    assert_equal "c", list[2]
    assert_equal "b", list[1]
    assert_equal "a", list[0]
  end
end
