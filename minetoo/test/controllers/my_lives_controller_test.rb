require 'test_helper'

class MyLivesControllerTest < ActionController::TestCase
  setup do
    @my_life = my_lives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_lives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_life" do
    assert_difference('MyLife.count') do
      post :create, my_life: { about_me: @my_life.about_me, user_id: @my_life.user_id }
    end

    assert_redirected_to my_life_path(assigns(:my_life))
  end

  test "should show my_life" do
    get :show, id: @my_life
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_life
    assert_response :success
  end

  test "should update my_life" do
    patch :update, id: @my_life, my_life: { about_me: @my_life.about_me, user_id: @my_life.user_id }
    assert_redirected_to my_life_path(assigns(:my_life))
  end

  test "should destroy my_life" do
    assert_difference('MyLife.count', -1) do
      delete :destroy, id: @my_life
    end

    assert_redirected_to my_lives_path
  end
end
