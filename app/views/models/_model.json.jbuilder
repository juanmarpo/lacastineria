json.extract! model, :id, :name, :contact, :email, :identification, :address, :height, :weight, :hair, :eyes, :lips, :nose, :created_at, :updated_at
json.url model_url(model, format: :json)