json.extract! detail, :id, :monto, :fecha, :descripcion, :created_at, :updated_at
json.url detail_url(detail, format: :json)