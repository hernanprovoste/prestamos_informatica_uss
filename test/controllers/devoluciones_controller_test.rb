require 'test_helper'

class DevolucionesControllerTest < ActionController::TestCase
  setup do
    @devolucione = devoluciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devoluciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devolucione" do
    assert_difference('Devolucione.count') do
      post :create, devolucione: { descripcion: @devolucione.descripcion, fechaDevolucion: @devolucione.fechaDevolucion, prestamo_id: @devolucione.prestamo_id }
    end

    assert_redirected_to devolucione_path(assigns(:devolucione))
  end

  test "should show devolucione" do
    get :show, id: @devolucione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devolucione
    assert_response :success
  end

  test "should update devolucione" do
    patch :update, id: @devolucione, devolucione: { descripcion: @devolucione.descripcion, fechaDevolucion: @devolucione.fechaDevolucion, prestamo_id: @devolucione.prestamo_id }
    assert_redirected_to devolucione_path(assigns(:devolucione))
  end

  test "should destroy devolucione" do
    assert_difference('Devolucione.count', -1) do
      delete :destroy, id: @devolucione
    end

    assert_redirected_to devoluciones_path
  end
end
