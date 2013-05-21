require 'test_helper'

class TaxaDeJurosControllerTest < ActionController::TestCase
  setup do
    @taxa_de_juro = taxa_de_juros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxa_de_juros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxa_de_juro" do
    assert_difference('TaxaDeJuro.count') do
      post :create, taxa_de_juro: { quantidademeses: @taxa_de_juro.quantidademeses, valordaparcela: @taxa_de_juro.valordaparcela, valordofinanciamento: @taxa_de_juro.valordofinanciamento }
    end

    assert_redirected_to taxa_de_juro_path(assigns(:taxa_de_juro))
  end

  test "should show taxa_de_juro" do
    get :show, id: @taxa_de_juro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxa_de_juro
    assert_response :success
  end

  test "should update taxa_de_juro" do
    put :update, id: @taxa_de_juro, taxa_de_juro: { quantidademeses: @taxa_de_juro.quantidademeses, valordaparcela: @taxa_de_juro.valordaparcela, valordofinanciamento: @taxa_de_juro.valordofinanciamento }
    assert_redirected_to taxa_de_juro_path(assigns(:taxa_de_juro))
  end

  test "should destroy taxa_de_juro" do
    assert_difference('TaxaDeJuro.count', -1) do
      delete :destroy, id: @taxa_de_juro
    end

    assert_redirected_to taxa_de_juros_path
  end
end
