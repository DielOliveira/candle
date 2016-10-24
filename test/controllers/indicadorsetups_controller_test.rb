require 'test_helper'

class IndicadorsetupsControllerTest < ActionController::TestCase
  setup do
    @indicadorsetup = indicadorsetups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicadorsetups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicadorsetup" do
    assert_difference('Indicadorsetup.count') do
      post :create, indicadorsetup: { indicador_id: @indicadorsetup.indicador_id }
    end

    assert_redirected_to indicadorsetup_path(assigns(:indicadorsetup))
  end

  test "should show indicadorsetup" do
    get :show, id: @indicadorsetup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicadorsetup
    assert_response :success
  end

  test "should update indicadorsetup" do
    patch :update, id: @indicadorsetup, indicadorsetup: { indicador_id: @indicadorsetup.indicador_id }
    assert_redirected_to indicadorsetup_path(assigns(:indicadorsetup))
  end

  test "should destroy indicadorsetup" do
    assert_difference('Indicadorsetup.count', -1) do
      delete :destroy, id: @indicadorsetup
    end

    assert_redirected_to indicadorsetups_path
  end
end
