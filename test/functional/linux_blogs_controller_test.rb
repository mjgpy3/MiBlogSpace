require 'test_helper'

class LinuxBlogsControllerTest < ActionController::TestCase
  setup do
    @linux_blog = linux_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linux_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linux_blog" do
    assert_difference('LinuxBlog.count') do
      post :create, linux_blog: { author_name: @linux_blog.author_name, header: @linux_blog.header, text_body: @linux_blog.text_body }
    end

    assert_redirected_to linux_blog_path(assigns(:linux_blog))
  end

  test "should show linux_blog" do
    get :show, id: @linux_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linux_blog
    assert_response :success
  end

  test "should update linux_blog" do
    put :update, id: @linux_blog, linux_blog: { author_name: @linux_blog.author_name, header: @linux_blog.header, text_body: @linux_blog.text_body }
    assert_redirected_to linux_blog_path(assigns(:linux_blog))
  end

  test "should destroy linux_blog" do
    assert_difference('LinuxBlog.count', -1) do
      delete :destroy, id: @linux_blog
    end

    assert_redirected_to linux_blogs_path
  end
end
