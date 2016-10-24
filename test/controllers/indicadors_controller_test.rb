require 'test_helper'

class IndicadorsControllerTest < ActionController::TestCase
  setup do
    @indicador = indicadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicador" do
    assert_difference('Indicador.count') do
      post :create, indicador: { descricao: @indicador.descricao, indicador: @indicador.indicador }
    end

    assert_redirected_to indicador_path(assigns(:indicador))
  end

  test "should show indicador" do
    get :show, id: @indicador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicador
    assert_response :success
  end

  test "should update indicador" do
    patch :update, id: @indicador, indicador: { descricao: @indicador.descricao, indicador: @indicador.indicador }
    assert_redirected_to indicador_path(assigns(:indicador))
  end

  test "should destroy indicador" do
    assert_difference('Indicador.count', -1) do
      delete :destroy, id: @indicador
    end

    assert_redirected_to indicadors_path
  end
end
