require 'test_helper'

class AlojamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alojamiento = alojamientos(:one)
  end

  test "should get index" do
    get alojamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_alojamiento_url
    assert_response :success
  end

  test "should create alojamiento" do
    assert_difference('Alojamiento.count') do
      post alojamientos_url, params: { alojamiento: { alimentacion: @alojamiento.alimentacion, bano_privado: @alojamiento.bano_privado, cercania: @alojamiento.cercania, descipcion: @alojamiento.descipcion, direccion: @alojamiento.direccion, imagen: @alojamiento.imagen, latitud: @alojamiento.latitud, longitud: @alojamiento.longitud, nombre: @alojamiento.nombre, parqueadero: @alojamiento.parqueadero, precio: @alojamiento.precio, tipo: @alojamiento.tipo, wifi: @alojamiento.wifi } }
    end

    assert_redirected_to alojamiento_url(Alojamiento.last)
  end

  test "should show alojamiento" do
    get alojamiento_url(@alojamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_alojamiento_url(@alojamiento)
    assert_response :success
  end

  test "should update alojamiento" do
    patch alojamiento_url(@alojamiento), params: { alojamiento: { alimentacion: @alojamiento.alimentacion, bano_privado: @alojamiento.bano_privado, cercania: @alojamiento.cercania, descipcion: @alojamiento.descipcion, direccion: @alojamiento.direccion, imagen: @alojamiento.imagen, latitud: @alojamiento.latitud, longitud: @alojamiento.longitud, nombre: @alojamiento.nombre, parqueadero: @alojamiento.parqueadero, precio: @alojamiento.precio, tipo: @alojamiento.tipo, wifi: @alojamiento.wifi } }
    assert_redirected_to alojamiento_url(@alojamiento)
  end

  test "should destroy alojamiento" do
    assert_difference('Alojamiento.count', -1) do
      delete alojamiento_url(@alojamiento)
    end

    assert_redirected_to alojamientos_url
  end
end
