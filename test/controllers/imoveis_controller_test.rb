require 'test_helper'

class ImoveisControllerTest < ActionController::TestCase
  setup do
    @imovel = imoveis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imoveis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imovel" do
    assert_difference('Imovel.count') do
      post :create, imovel: { bairro: @imovel.bairro, cidade: @imovel.cidade, logradouro: @imovel.logradouro, numero: @imovel.numero, tipo: @imovel.tipo }
    end

    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should show imovel" do
    get :show, id: @imovel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imovel
    assert_response :success
  end

  test "should update imovel" do
    patch :update, id: @imovel, imovel: { bairro: @imovel.bairro, cidade: @imovel.cidade, logradouro: @imovel.logradouro, numero: @imovel.numero, tipo: @imovel.tipo }
    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should destroy imovel" do
    assert_difference('Imovel.count', -1) do
      delete :destroy, id: @imovel
    end

    assert_redirected_to imoveis_path
  end
end
