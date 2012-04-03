require 'test_helper'

class LinguagensControllerTest < ActionController::TestCase
  setup do
    @linguagem = linguagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linguagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linguagem" do
    assert_difference('Linguagem.count') do
      post :create, linguagem: { nome: @linguagem.nome }
    end

    assert_redirected_to linguagem_path(assigns(:linguagem))
  end

  test "should show linguagem" do
    get :show, id: @linguagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linguagem
    assert_response :success
  end

  test "should update linguagem" do
    put :update, id: @linguagem, linguagem: { nome: @linguagem.nome }
    assert_redirected_to linguagem_path(assigns(:linguagem))
  end

  test "should destroy linguagem" do
    assert_difference('Linguagem.count', -1) do
      delete :destroy, id: @linguagem
    end

    assert_redirected_to linguagens_path
  end
end
