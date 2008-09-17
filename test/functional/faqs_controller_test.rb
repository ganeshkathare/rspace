require File.dirname(__FILE__) + '/../test_helper'

class FaqsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:faqs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_faq
    assert_difference('Faq.count') do
      post :create, :faq => { }
    end

    assert_redirected_to faq_path(assigns(:faq))
  end

  def test_should_show_faq
    get :show, :id => faqs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => faqs(:one).id
    assert_response :success
  end

  def test_should_update_faq
    put :update, :id => faqs(:one).id, :faq => { }
    assert_redirected_to faq_path(assigns(:faq))
  end

  def test_should_destroy_faq
    assert_difference('Faq.count', -1) do
      delete :destroy, :id => faqs(:one).id
    end

    assert_redirected_to faqs_path
  end
end
