require 'test_helper'

class PregoestitulosgraficosControllerTest < ActionController::TestCase
  setup do
    @pregoestitulosgrafico = pregoestitulosgraficos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregoestitulosgraficos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregoestitulosgrafico" do
    assert_difference('Pregoestitulosgrafico.count') do
      post :create, pregoestitulosgrafico: { arquivo_id: @pregoestitulosgrafico.arquivo_id, pregoestitulo_id: @pregoestitulosgrafico.pregoestitulo_id, tempografico_id: @pregoestitulosgrafico.tempografico_id }
    end

    assert_redirected_to pregoestitulosgrafico_path(assigns(:pregoestitulosgrafico))
  end

  test "should show pregoestitulosgrafico" do
    get :show, id: @pregoestitulosgrafico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregoestitulosgrafico
    assert_response :success
  end

  test "should update pregoestitulosgrafico" do
    patch :update, id: @pregoestitulosgrafico, pregoestitulosgrafico: { arquivo_id: @pregoestitulosgrafico.arquivo_id, pregoestitulo_id: @pregoestitulosgrafico.pregoestitulo_id, tempografico_id: @pregoestitulosgrafico.tempografico_id }
    assert_redirected_to pregoestitulosgrafico_path(assigns(:pregoestitulosgrafico))
  end

  test "should destroy pregoestitulosgrafico" do
    assert_difference('Pregoestitulosgrafico.count', -1) do
      delete :destroy, id: @pregoestitulosgrafico
    end

    assert_redirected_to pregoestitulosgraficos_path
  end
end
