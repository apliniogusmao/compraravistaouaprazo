require 'test_helper'

class ValorPrestacosControllerTest < ActionController::TestCase
  setup do
    @valor_prestaco = valor_prestacos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valor_prestacos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valor_prestaco" do
    assert_difference('ValorPrestaco.count') do
      post :create, valor_prestaco: { numeromeses: @valor_prestaco.numeromeses, taxajuros: @valor_prestaco.taxajuros, valorfinanciado: @valor_prestaco.valorfinanciado }
    end

    assert_redirected_to valor_prestaco_path(assigns(:valor_prestaco))
  end

  test "should show valor_prestaco" do
    get :show, id: @valor_prestaco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valor_prestaco
    assert_response :success
  end

  test "should update valor_prestaco" do
    put :update, id: @valor_prestaco, valor_prestaco: { numeromeses: @valor_prestaco.numeromeses, taxajuros: @valor_prestaco.taxajuros, valorfinanciado: @valor_prestaco.valorfinanciado }
    assert_redirected_to valor_prestaco_path(assigns(:valor_prestaco))
  end

  test "should destroy valor_prestaco" do
    assert_difference('ValorPrestaco.count', -1) do
      delete :destroy, id: @valor_prestaco
    end

    assert_redirected_to valor_prestacos_path
  end
end
