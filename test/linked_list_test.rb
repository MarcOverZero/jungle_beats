require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linked_list"

class LinkedListTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_it_has_a_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append
    list = LinkedList.new
    list.append("doop")

    assert_instance_of Node, list.head
  end

  def test_it_can_hold_the_nodes
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_it_retains_the_list
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_it_can_count_the_nodes
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_it_can_handle_two_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep" , list.head.next_node.data
    assert_equal 2, list.count
  end

  def test_it_can_write_multiple_nodes_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  # def test_for_davids_three_nodes
  #   list = LinkedList.new
  #   list.append("doop")
  #   list.append("deep")
  #   list.append("bop")
  #
  #   assert_equal "bop", list.head.next_node.next_node.data
  # end

  def test_it_can_string_three_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("bip")

    assert_equal "doop deep bip", list.to_string
  end

  def test_it_can_count_three_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("bop")

    assert_equal 3, list.count
  end

  def test_it_can_prepend
    list = LinkedList.new
    list.prepend("doop")
    list.prepend("deep")
    list.prepend("bop")

    assert_equal "bop", list.head.data
    assert_equal "deep", list.head.next_node.data
    assert_equal "doop", list.head.next_node.next_node.data
  end

  def test_it_can_insert
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("bop")
    list.append("shoo")
    list.append("bow")
    list.insert(3,"insert")

    assert "insert", list.head.next_node.next_node.next_node.next_node.data
  end

  def test_it_knows_what_is_included
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("bop")
    list.append("shoo")
    list.append("bow")

    assert_equal true, list.includes?("bop")
    assert_equal false, list.includes?("marc")
  end


  def test_it_can_find
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("bop")
    list.append("shoo")
    list.append("bow")

    assert_equal "deep bop shoo", list.find(2,3)
  end

  def test_it_can_pop
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("bop")
    list.append("shoo")
    list.append("bow")

    assert_equal "bow", list.pop
    assert_equal "doop deep bop shoo", list.to_string
  end
end
