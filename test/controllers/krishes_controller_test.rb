require 'test_helper'

class KrishesControllerTest < ActionController::TestCase
  setup do
    @krish = krishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:krishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create krish" do
    assert_difference('Krish.count') do
      post :create, krish: { employe_id: @krish.employe_id, is_succes: @krish.is_succes, location: @krish.location, name: @krish.name, user_count: @krish.user_count, user_id: @krish.user_id }
    end

    assert_redirected_to krish_path(assigns(:krish))
  end

  test "should show krish" do
    get :show, id: @krish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @krish
    assert_response :success
  end

  test "should update krish" do
    patch :update, id: @krish, krish: { employe_id: @krish.employe_id, is_succes: @krish.is_succes, location: @krish.location, name: @krish.name, user_count: @krish.user_count, user_id: @krish.user_id }
    assert_redirected_to krish_path(assigns(:krish))
  end

  test "should destroy krish" do
    assert_difference('Krish.count', -1) do
      delete :destroy, id: @krish
    end

    assert_redirected_to krishes_path
  end
end
