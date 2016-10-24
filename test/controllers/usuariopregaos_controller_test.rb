require 'test_helper'

class UsuariopregaosControllerTest < ActionController::TestCase
  setup do
    @usuariopregao = usuariopregaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuariopregaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuariopregao" do
    assert_difference('Usuariopregao.count') do
      post :create, usuariopregao: { checkpoint: @usuariopregao.checkpoint, flagfinalizado: @usuariopregao.flagfinalizado, indicadorsetup_id: @usuariopregao.indicadorsetup_id, pregoestitulo_id: @usuariopregao.pregoestitulo_id, resultado: @usuariopregao.resultado, usuario: @usuariopregao.usuario }
    end

    assert_redirected_to usuariopregao_path(assigns(:usuariopregao))
  end

  test "should show usuariopregao" do
    get :show, id: @usuariopregao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuariopregao
    assert_response :success
  end

  test "should update usuariopregao" do
    patch :update, id: @usuariopregao, usuariopregao: { checkpoint: @usuariopregao.checkpoint, flagfinalizado: @usuariopregao.flagfinalizado, indicadorsetup_id: @usuariopregao.indicadorsetup_id, pregoestitulo_id: @usuariopregao.pregoestitulo_id, resultado: @usuariopregao.resultado, usuario: @usuariopregao.usuario }
    assert_redirected_to usuariopregao_path(assigns(:usuariopregao))
  end

  test "should destroy usuariopregao" do
    assert_difference('Usuariopregao.count', -1) do
      delete :destroy, id: @usuariopregao
    end

    assert_redirected_to usuariopregaos_path
  end
end
