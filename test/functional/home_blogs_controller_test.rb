require 'test_helper'

class HomeBlogsControllerTest < ActionController::TestCase
  setup do
    @home_blog = home_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_blog" do
    assert_difference('HomeBlog.count') do
      post :create, home_blog: { author_name: @home_blog.author_name, header: @home_blog.header, text_body: @home_blog.text_body }
    end

    assert_redirected_to home_blog_path(assigns(:home_blog))
  end

  test "should show home_blog" do
    get :show, id: @home_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_blog
    assert_response :success
  end

  test "should update home_blog" do
    put :update, id: @home_blog, home_blog: { author_name: @home_blog.author_name, header: @home_blog.header, text_body: @home_blog.text_body }
    assert_redirected_to home_blog_path(assigns(:home_blog))
  end

  test "should destroy home_blog" do
    assert_difference('HomeBlog.count', -1) do
      delete :destroy, id: @home_blog
    end

    assert_redirected_to home_blogs_path
  end
end
