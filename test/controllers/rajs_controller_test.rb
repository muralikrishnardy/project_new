require 'test_helper'

class RajsControllerTest < ActionController::TestCase
  setup do
    @raj = rajs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rajs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raj" do
    assert_difference('Raj.count') do
      post :create, raj: { age: @raj.age, job: @raj.job, location: @raj.location, name: @raj.name, salary: @raj.salary }
    end

    assert_redirected_to raj_path(assigns(:raj))
  end

  test "should show raj" do
    get :show, id: @raj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raj
    assert_response :success
  end

  test "should update raj" do
    patch :update, id: @raj, raj: { age: @raj.age, job: @raj.job, location: @raj.location, name: @raj.name, salary: @raj.salary }
    assert_redirected_to raj_path(assigns(:raj))
  end

  test "should destroy raj" do
    assert_difference('Raj.count', -1) do
      delete :destroy, id: @raj
    end

    assert_redirected_to rajs_path
  end
end
