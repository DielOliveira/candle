require 'test_helper'

class UsuariosplanosControllerTest < ActionController::TestCase
  setup do
    @usuariosplano = usuariosplanos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuariosplanos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuariosplano" do
    assert_difference('Usuariosplano.count') do
      post :create, usuariosplano: { datapagamento: @usuariosplano.datapagamento, linhacodigopagamento: @usuariosplano.linhacodigopagamento, observacao: @usuariosplano.observacao, plano_id: @usuariosplano.plano_id, usuario_id: @usuariosplano.usuario_id, valid_at: @usuariosplano.valid_at }
    end

    assert_redirected_to usuariosplano_path(assigns(:usuariosplano))
  end

  test "should show usuariosplano" do
    get :show, id: @usuariosplano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuariosplano
    assert_response :success
  end

  test "should update usuariosplano" do
    patch :update, id: @usuariosplano, usuariosplano: { datapagamento: @usuariosplano.datapagamento, linhacodigopagamento: @usuariosplano.linhacodigopagamento, observacao: @usuariosplano.observacao, plano_id: @usuariosplano.plano_id, usuario_id: @usuariosplano.usuario_id, valid_at: @usuariosplano.valid_at }
    assert_redirected_to usuariosplano_path(assigns(:usuariosplano))
  end

  test "should destroy usuariosplano" do
    assert_difference('Usuariosplano.count', -1) do
      delete :destroy, id: @usuariosplano
    end

    assert_redirected_to usuariosplanos_path
  end
end
