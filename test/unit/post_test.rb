require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "create a post" do
    p = Post.create(:content => 'trivial')
    assert_equal 1, Post.count
    assert_equal 'trivial', p.content
  end
  
end