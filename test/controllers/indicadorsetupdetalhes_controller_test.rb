require 'test_helper'

class IndicadorsetupdetalhesControllerTest < ActionController::TestCase
  setup do
    @indicadorsetupdetalhe = indicadorsetupdetalhes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicadorsetupdetalhes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicadorsetupdetalhe" do
    assert_difference('Indicadorsetupdetalhe.count') do
      post :create, indicadorsetupdetalhe: { descricao: @indicadorsetupdetalhe.descricao, indicador_id: @indicadorsetupdetalhe.indicador_id, valordefault: @indicadorsetupdetalhe.valordefault }
    end

    assert_redirected_to indicadorsetupdetalhe_path(assigns(:indicadorsetupdetalhe))
  end

  test "should show indicadorsetupdetalhe" do
    get :show, id: @indicadorsetupdetalhe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicadorsetupdetalhe
    assert_response :success
  end

  test "should update indicadorsetupdetalhe" do
    patch :update, id: @indicadorsetupdetalhe, indicadorsetupdetalhe: { descricao: @indicadorsetupdetalhe.descricao, indicador_id: @indicadorsetupdetalhe.indicador_id, valordefault: @indicadorsetupdetalhe.valordefault }
    assert_redirected_to indicadorsetupdetalhe_path(assigns(:indicadorsetupdetalhe))
  end

  test "should destroy indicadorsetupdetalhe" do
    assert_difference('Indicadorsetupdetalhe.count', -1) do
      delete :destroy, id: @indicadorsetupdetalhe
    end

    assert_redirected_to indicadorsetupdetalhes_path
  end
end
