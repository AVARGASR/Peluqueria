json.extract! service, :id, :tipo, :precio, :descripcion, :reservation_id, :created_at, :updated_at
json.url service_url(service, format: :json)