json.extract! alojamiento, :id, :nombre, :direccion, :precio, :descipcion, :tipo, :imagen, :latitud, :longitud, :cercania, :wifi, :bano_privado, :alimentacion, :parqueadero, :created_at, :updated_at
json.url alojamiento_url(alojamiento, format: :json)
