require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'


class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end

  def test_nodes_have_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_nodes_initialized_with_nil_for_their_next_node
    node = Node.new("plop")
    assert_nil node.next_node
  end

end
