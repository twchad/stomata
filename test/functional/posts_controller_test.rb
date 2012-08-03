require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  test "index shows all posts" do
    p1 = Post.create(:content => 'foo')
    p2 = Post.create(:content => 'boo')
    
    get :index
    assert_select '.post', :count => 2
  end
  
  test "showing a single post" do
    p = Post.create(:content => 'boo')
    get :show, :id => p
    assert_select '.post', :text => 'boo'
  end

  test "creating a post" do
    post :create, :post => {:content => 'boo'}
    assert_redirected_to posts_path
    assert_equal 1, Post.count
  end

  
end
