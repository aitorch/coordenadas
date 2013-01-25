require 'test_helper'

class AlianzasControllerTest < ActionController::TestCase
  setup do
    @alianza = alianzas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alianzas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alianza" do
    assert_difference('Alianza.count') do
      post :create, alianza: {  }
    end

    assert_redirected_to alianza_path(assigns(:alianza))
  end

  test "should show alianza" do
    get :show, id: @alianza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alianza
    assert_response :success
  end

  test "should update alianza" do
    put :update, id: @alianza, alianza: {  }
    assert_redirected_to alianza_path(assigns(:alianza))
  end

  test "should destroy alianza" do
    assert_difference('Alianza.count', -1) do
      delete :destroy, id: @alianza
    end

    assert_redirected_to alianzas_path
  end
end
