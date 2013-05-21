require 'test_helper'

class QuantidadeDeMesesControllerTest < ActionController::TestCase
  setup do
    @quantidade_de_mese = quantidade_de_meses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quantidade_de_meses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quantidade_de_mese" do
    assert_difference('QuantidadeDeMese.count') do
      post :create, quantidade_de_mese: { jurosmensal: @quantidade_de_mese.jurosmensal, valorfinanciado: @quantidade_de_mese.valorfinanciado, valorprestacao: @quantidade_de_mese.valorprestacao }
    end

    assert_redirected_to quantidade_de_mese_path(assigns(:quantidade_de_mese))
  end

  test "should show quantidade_de_mese" do
    get :show, id: @quantidade_de_mese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quantidade_de_mese
    assert_response :success
  end

  test "should update quantidade_de_mese" do
    put :update, id: @quantidade_de_mese, quantidade_de_mese: { jurosmensal: @quantidade_de_mese.jurosmensal, valorfinanciado: @quantidade_de_mese.valorfinanciado, valorprestacao: @quantidade_de_mese.valorprestacao }
    assert_redirected_to quantidade_de_mese_path(assigns(:quantidade_de_mese))
  end

  test "should destroy quantidade_de_mese" do
    assert_difference('QuantidadeDeMese.count', -1) do
      delete :destroy, id: @quantidade_de_mese
    end

    assert_redirected_to quantidade_de_meses_path
  end
end
