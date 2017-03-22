require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"

class NodeTest < Minitest::Test
  def test_it_exists
  node = Node.new("plop")

  assert_instance_of Node, node
  end

  def test_it_has_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_it_has_room_for_a_link
    node = Node.new("plop")

    assert_nil node.next_node
  end
end
