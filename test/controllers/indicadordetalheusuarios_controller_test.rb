require 'test_helper'

class IndicadordetalheusuariosControllerTest < ActionController::TestCase
  setup do
    @indicadordetalheusuario = indicadordetalheusuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicadordetalheusuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicadordetalheusuario" do
    assert_difference('Indicadordetalheusuario.count') do
      post :create, indicadordetalheusuario: { indicadorsetup_id: @indicadordetalheusuario.indicadorsetup_id, indicadorsetupdetalhe_id: @indicadordetalheusuario.indicadorsetupdetalhe_id, valor: @indicadordetalheusuario.valor }
    end

    assert_redirected_to indicadordetalheusuario_path(assigns(:indicadordetalheusuario))
  end

  test "should show indicadordetalheusuario" do
    get :show, id: @indicadordetalheusuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicadordetalheusuario
    assert_response :success
  end

  test "should update indicadordetalheusuario" do
    patch :update, id: @indicadordetalheusuario, indicadordetalheusuario: { indicadorsetup_id: @indicadordetalheusuario.indicadorsetup_id, indicadorsetupdetalhe_id: @indicadordetalheusuario.indicadorsetupdetalhe_id, valor: @indicadordetalheusuario.valor }
    assert_redirected_to indicadordetalheusuario_path(assigns(:indicadordetalheusuario))
  end

  test "should destroy indicadordetalheusuario" do
    assert_difference('Indicadordetalheusuario.count', -1) do
      delete :destroy, id: @indicadordetalheusuario
    end

    assert_redirected_to indicadordetalheusuarios_path
  end
end
