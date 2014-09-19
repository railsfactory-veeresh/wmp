require 'test_helper'

class TellFriendsControllerTest < ActionController::TestCase
  setup do
    @tell_friend = tell_friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tell_friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tell_friend" do
    assert_difference('TellFriend.count') do
      post :create, tell_friend: { birth_date: @tell_friend.birth_date, friend_email: @tell_friend.friend_email, friend_name: @tell_friend.friend_name, message: @tell_friend.message, sender_email: @tell_friend.sender_email, sender_name: @tell_friend.sender_name, user_id: @tell_friend.user_id }
    end

    assert_redirected_to tell_friend_path(assigns(:tell_friend))
  end

  test "should show tell_friend" do
    get :show, id: @tell_friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tell_friend
    assert_response :success
  end

  test "should update tell_friend" do
    patch :update, id: @tell_friend, tell_friend: { birth_date: @tell_friend.birth_date, friend_email: @tell_friend.friend_email, friend_name: @tell_friend.friend_name, message: @tell_friend.message, sender_email: @tell_friend.sender_email, sender_name: @tell_friend.sender_name, user_id: @tell_friend.user_id }
    assert_redirected_to tell_friend_path(assigns(:tell_friend))
  end

  test "should destroy tell_friend" do
    assert_difference('TellFriend.count', -1) do
      delete :destroy, id: @tell_friend
    end

    assert_redirected_to tell_friends_path
  end
end
