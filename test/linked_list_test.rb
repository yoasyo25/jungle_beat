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

  def test_print_data_from_the_list
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_can_take_in_additional_data
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_instance_of Node, list.head.next_node
  end

  def test_can_count_additional_data
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal 2, list.count
  end

  def test_can_print_all_data_from_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_can_print_all_data_from_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_it_can_prepend_to_a_list
    list = LinkedList.new
    list.append("plop")
    list.append("suu")

    assert_equal "plop suu", list.to_string

    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string

    assert_equal 3, list.count
  end

  def test_it_can_insert_elements
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string

    assert_equal 3, list.count
    list.insert(1, "woo")

    assert_equal "dop woo plop suu", list.to_string
  end

  def test_can_pop_the_last_node_from_the_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("plop")

    assert_equal "doop deep plop", list.to_string

    assert_equal 3, list.count

    assert_equal "plop", list.pop

    assert_equal "doop deep", list.to_string

    assert_equal 2, list.count
  end

  def test_it_can_find_and_return_data_from_list
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "deep woo shi shu blop", list.to_string

    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)

    assert list.includes?("deep")
    refute list.includes?("dep")

    assert_equal "blop", list.pop
    assert_equal "shu", list.pop

    assert_equal "deep woo shi", list.to_string
  end

end
