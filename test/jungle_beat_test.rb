require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/jungle_beat"

class LinkedListTest < Minitest::Test
  def test_it_exists
    jb = JungleBeat.new

    assert_instance_of LinkedList, jb.list
  end

  def test_it_can_access_head_within_list
    jb = JungleBeat.new

    assert_nil nil, jb.list.head
  end

  def test_it_can_append_to_lists
    jb = JungleBeat.new

    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_it_can_access_node_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep", jb.list.head.data
  end

  def test_it_compiles_nodes_properly
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_it_can_count_beats_added
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal 3, jb.count
  end

  def test_it
  end

end
