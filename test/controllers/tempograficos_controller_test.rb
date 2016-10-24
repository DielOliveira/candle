require 'test_helper'

class TempograficosControllerTest < ActionController::TestCase
  setup do
    @tempografico = tempograficos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempograficos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tempografico" do
    assert_difference('Tempografico.count') do
      post :create, tempografico: { tempo: @tempografico.tempo }
    end

    assert_redirected_to tempografico_path(assigns(:tempografico))
  end

  test "should show tempografico" do
    get :show, id: @tempografico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tempografico
    assert_response :success
  end

  test "should update tempografico" do
    patch :update, id: @tempografico, tempografico: { tempo: @tempografico.tempo }
    assert_redirected_to tempografico_path(assigns(:tempografico))
  end

  test "should destroy tempografico" do
    assert_difference('Tempografico.count', -1) do
      delete :destroy, id: @tempografico
    end

    assert_redirected_to tempograficos_path
  end
end
