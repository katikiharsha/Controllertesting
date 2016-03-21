require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
   assert assigns(:posts)
   assert_template "index"

  end

  test "should create a post" do

  	assert_difference 'Post.count' do
    post :create, post:{title: "title", desc: "Harsha"}
    assert_response :redirect
	end
  end

end
