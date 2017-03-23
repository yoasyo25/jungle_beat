require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test


  def test_it_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_it_can_access_instance_of_list
    jb = JungleBeat.new
    assert_instance_of LinkedList, jb.list
  end

  def test_the_head_in_list_is_nil_by_default
    jb = JungleBeat.new
    assert_nil jb.list.head
  end

  def test_can_append_data_to_list
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_access_to_node_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end

  def test_access_to_node_data
    jb = JungleBeat.new
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
    assert_equal 3, jb.count
  end



end
