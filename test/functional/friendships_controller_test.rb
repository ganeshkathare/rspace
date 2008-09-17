require File.dirname(__FILE__) + '/../test_helper'

class FriendshipsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:friendships)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_friendship
    assert_difference('Friendship.count') do
      post :create, :friendship => { }
    end

    assert_redirected_to friendship_path(assigns(:friendship))
  end

  def test_should_show_friendship
    get :show, :id => friendships(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => friendships(:one).id
    assert_response :success
  end

  def test_should_update_friendship
    put :update, :id => friendships(:one).id, :friendship => { }
    assert_redirected_to friendship_path(assigns(:friendship))
  end

  def test_should_destroy_friendship
    assert_difference('Friendship.count', -1) do
      delete :destroy, :id => friendships(:one).id
    end

    assert_redirected_to friendships_path
  end
end
