json.extract! proyect, :id, :name, :proyect_type, :director, :client, :created_at, :updated_at
json.url proyect_url(proyect, format: :json)