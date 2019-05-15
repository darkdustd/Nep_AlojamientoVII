json.extract! pago, :id, :nombre_tarjeta, :numero_tarjeta, :cvv_tarjeta, :fecha_tarjeta, :created_at, :updated_at
json.url pago_url(pago, format: :json)
