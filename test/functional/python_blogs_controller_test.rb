require 'test_helper'

class PythonBlogsControllerTest < ActionController::TestCase
  setup do
    @python_blog = python_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:python_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create python_blog" do
    assert_difference('PythonBlog.count') do
      post :create, python_blog: { author_name: @python_blog.author_name, header: @python_blog.header, text_body: @python_blog.text_body }
    end

    assert_redirected_to python_blog_path(assigns(:python_blog))
  end

  test "should show python_blog" do
    get :show, id: @python_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @python_blog
    assert_response :success
  end

  test "should update python_blog" do
    put :update, id: @python_blog, python_blog: { author_name: @python_blog.author_name, header: @python_blog.header, text_body: @python_blog.text_body }
    assert_redirected_to python_blog_path(assigns(:python_blog))
  end

  test "should destroy python_blog" do
    assert_difference('PythonBlog.count', -1) do
      delete :destroy, id: @python_blog
    end

    assert_redirected_to python_blogs_path
  end
end
