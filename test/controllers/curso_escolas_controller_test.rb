require 'test_helper'

class CursoEscolasControllerTest < ActionController::TestCase
  setup do
    @curso_escola = curso_escolas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curso_escolas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curso_escola" do
    assert_difference('CursoEscola.count') do
      post :create, curso_escola: { curso_id: @curso_escola.curso_id, escola_id: @curso_escola.escola_id, professor_id: @curso_escola.professor_id }
    end

    assert_redirected_to curso_escola_path(assigns(:curso_escola))
  end

  test "should show curso_escola" do
    get :show, id: @curso_escola
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curso_escola
    assert_response :success
  end

  test "should update curso_escola" do
    patch :update, id: @curso_escola, curso_escola: { curso_id: @curso_escola.curso_id, escola_id: @curso_escola.escola_id, professor_id: @curso_escola.professor_id }
    assert_redirected_to curso_escola_path(assigns(:curso_escola))
  end

  test "should destroy curso_escola" do
    assert_difference('CursoEscola.count', -1) do
      delete :destroy, id: @curso_escola
    end

    assert_redirected_to curso_escolas_path
  end
end
