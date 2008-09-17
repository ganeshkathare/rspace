require File.dirname(__FILE__) + '/../test_helper'

class SpecsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:specs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_spec
    assert_difference('Spec.count') do
      post :create, :spec => { }
    end

    assert_redirected_to spec_path(assigns(:spec))
  end

  def test_should_show_spec
    get :show, :id => specs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => specs(:one).id
    assert_response :success
  end

  def test_should_update_spec
    put :update, :id => specs(:one).id, :spec => { }
    assert_redirected_to spec_path(assigns(:spec))
  end

  def test_should_destroy_spec
    assert_difference('Spec.count', -1) do
      delete :destroy, :id => specs(:one).id
    end

    assert_redirected_to specs_path
  end
end
