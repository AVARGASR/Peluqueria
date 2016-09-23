json.extract! reservation, :id, :fecha, :descripcion, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)