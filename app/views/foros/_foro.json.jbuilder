json.extract! foro, :id, :comentario, :puntuacion, :created_at, :updated_at
json.url foro_url(foro, format: :json)
