require 'test_helper'

class LksControllerTest < ActionController::TestCase
  setup do
    @lk = lks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lk" do
    assert_difference('Lk.count') do
      post :create, lk: { content: @lk.content, name: @lk.name, url: @lk.url }
    end

    assert_redirected_to lk_path(assigns(:lk))
  end

  test "should show lk" do
    get :show, id: @lk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lk
    assert_response :success
  end

  test "should update lk" do
    patch :update, id: @lk, lk: { content: @lk.content, name: @lk.name, url: @lk.url }
    assert_redirected_to lk_path(assigns(:lk))
  end

  test "should destroy lk" do
    assert_difference('Lk.count', -1) do
      delete :destroy, id: @lk
    end

    assert_redirected_to lks_path
  end
end
