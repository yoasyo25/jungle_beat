require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'


class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_is_initialized_with_nil_as_head_value
    list = LinkedList.new
    assert_nil list.head
  end

  def test_it_appends_to_the_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_appending_adds_a_node_with_data_and_next_node_pointer
    list = LinkedList.new
    list.append("doop")
    assert_instance_of LinkedList, list
  end

  def test_the_next_nod_is_nil_after_appending_one_value
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
    assert_nil list.head.next_node
  end

  def test_count_number_of_data_in_the_list
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_it_can_print_data_in_the_list
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

end
