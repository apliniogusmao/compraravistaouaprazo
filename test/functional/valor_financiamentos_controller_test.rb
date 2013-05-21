require 'test_helper'

class ValorFinanciamentosControllerTest < ActionController::TestCase
  setup do
    @valor_financiamento = valor_financiamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valor_financiamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valor_financiamento" do
    assert_difference('ValorFinanciamento.count') do
      post :create, valor_financiamento: { numeromeses: @valor_financiamento.numeromeses, taxadejuros: @valor_financiamento.taxadejuros, valordasparcelas: @valor_financiamento.valordasparcelas }
    end

    assert_redirected_to valor_financiamento_path(assigns(:valor_financiamento))
  end

  test "should show valor_financiamento" do
    get :show, id: @valor_financiamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valor_financiamento
    assert_response :success
  end

  test "should update valor_financiamento" do
    put :update, id: @valor_financiamento, valor_financiamento: { numeromeses: @valor_financiamento.numeromeses, taxadejuros: @valor_financiamento.taxadejuros, valordasparcelas: @valor_financiamento.valordasparcelas }
    assert_redirected_to valor_financiamento_path(assigns(:valor_financiamento))
  end

  test "should destroy valor_financiamento" do
    assert_difference('ValorFinanciamento.count', -1) do
      delete :destroy, id: @valor_financiamento
    end

    assert_redirected_to valor_financiamentos_path
  end
end
