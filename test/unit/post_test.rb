require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "create a post" do
    p = Post.create(:content => 'trivial', :title => "foo")
    assert_equal 2, Post.count
    assert_equal 'trivial', p.content
  end
  
end