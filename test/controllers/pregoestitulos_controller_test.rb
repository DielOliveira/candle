require 'test_helper'

class PregoestitulosControllerTest < ActionController::TestCase
  setup do
    @pregoestitulo = pregoestitulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregoestitulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregoestitulo" do
    assert_difference('Pregoestitulo.count') do
      post :create, pregoestitulo: { flagativo: @pregoestitulo.flagativo, pregao_id: @pregoestitulo.pregao_id, titulo_id: @pregoestitulo.titulo_id }
    end

    assert_redirected_to pregoestitulo_path(assigns(:pregoestitulo))
  end

  test "should show pregoestitulo" do
    get :show, id: @pregoestitulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregoestitulo
    assert_response :success
  end

  test "should update pregoestitulo" do
    patch :update, id: @pregoestitulo, pregoestitulo: { flagativo: @pregoestitulo.flagativo, pregao_id: @pregoestitulo.pregao_id, titulo_id: @pregoestitulo.titulo_id }
    assert_redirected_to pregoestitulo_path(assigns(:pregoestitulo))
  end

  test "should destroy pregoestitulo" do
    assert_difference('Pregoestitulo.count', -1) do
      delete :destroy, id: @pregoestitulo
    end

    assert_redirected_to pregoestitulos_path
  end
end
