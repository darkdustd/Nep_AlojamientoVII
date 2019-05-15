require 'test_helper'

class TiiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tiipo = tiipos(:one)
  end

  test "should get index" do
    get tiipos_url
    assert_response :success
  end

  test "should get new" do
    get new_tiipo_url
    assert_response :success
  end

  test "should create tiipo" do
    assert_difference('Tiipo.count') do
      post tiipos_url, params: { tiipo: { codigo: @tiipo.codigo, nombre: @tiipo.nombre } }
    end

    assert_redirected_to tiipo_url(Tiipo.last)
  end

  test "should show tiipo" do
    get tiipo_url(@tiipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tiipo_url(@tiipo)
    assert_response :success
  end

  test "should update tiipo" do
    patch tiipo_url(@tiipo), params: { tiipo: { codigo: @tiipo.codigo, nombre: @tiipo.nombre } }
    assert_redirected_to tiipo_url(@tiipo)
  end

  test "should destroy tiipo" do
    assert_difference('Tiipo.count', -1) do
      delete tiipo_url(@tiipo)
    end

    assert_redirected_to tiipos_url
  end
end
