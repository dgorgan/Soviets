require 'test_helper'

class SovietsControllerTest < ActionController::TestCase
  setup do
    @soviet = soviets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soviets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soviet" do
    assert_difference('Soviet.count') do
      post :create, soviet: { about: @soviet.about, experience: @soviet.experience, name: @soviet.name, position: @soviet.position, rank: @soviet.rank }
    end

    assert_redirected_to soviet_path(assigns(:soviet))
  end

  test "should show soviet" do
    get :show, id: @soviet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soviet
    assert_response :success
  end

  test "should update soviet" do
    patch :update, id: @soviet, soviet: { about: @soviet.about, experience: @soviet.experience, name: @soviet.name, position: @soviet.position, rank: @soviet.rank }
    assert_redirected_to soviet_path(assigns(:soviet))
  end

  test "should destroy soviet" do
    assert_difference('Soviet.count', -1) do
      delete :destroy, id: @soviet
    end

    assert_redirected_to soviets_path
  end
end
