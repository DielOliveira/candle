require 'test_helper'

class PregaosControllerTest < ActionController::TestCase
  setup do
    @pregao = pregaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregao" do
    assert_difference('Pregao.count') do
      post :create, pregao: { data: @pregao.data, flagativo: @pregao.flagativo }
    end

    assert_redirected_to pregao_path(assigns(:pregao))
  end

  test "should show pregao" do
    get :show, id: @pregao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregao
    assert_response :success
  end

  test "should update pregao" do
    patch :update, id: @pregao, pregao: { data: @pregao.data, flagativo: @pregao.flagativo }
    assert_redirected_to pregao_path(assigns(:pregao))
  end

  test "should destroy pregao" do
    assert_difference('Pregao.count', -1) do
      delete :destroy, id: @pregao
    end

    assert_redirected_to pregaos_path
  end
end
